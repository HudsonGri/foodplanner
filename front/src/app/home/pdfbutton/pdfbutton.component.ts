import { Component } from '@angular/core';
import { AuthService } from '@auth0/auth0-angular';
import { HttpClient } from '@angular/common/http';
import { MatButtonModule } from '@angular/material/button';
import jspdf from 'jspdf';
import * as moment from 'moment';
import check_expire  from '../../expire';
import gen_token from '../../token_gen'


interface Ingredients {
  name: string;
  unit: string;
  amount: number;
  aisle: string;
}

@Component({
  selector: 'app-pdfbutton',
  templateUrl: './pdfbutton.component.html',
  styleUrls: ['./pdfbutton.component.css']
})
export class PdfbuttonComponent {

  ingredients: Ingredients[] = [];

  ingredientMap = new Map<string, Ingredients>();

  userIP: any;
  a_user: any;
  responseUserData: any;
  

  constructor(public auth: AuthService, private http: HttpClient) { }

  ngOnInit() {
    // Simple POST request with a JSON body and response type <any>


    this.auth.user$.subscribe((user: any) => {
      console.log("loading this week")
      this.a_user = user;
      this.http.get<any>(`http://localhost:8080/users/${this.a_user.email}/${gen_token(this.a_user.sub)}`).subscribe(data => {
        let i = 0;

        for (const [key, value_pre] of Object.entries(data.data.week_recipes)) {
          let value = null;
          if(value_pre.hasOwnProperty('val')) {
            value = value_pre['val']
          } else {
            value = value_pre
          }
          
          if (check_expire(value_pre['timestamp'])) {

            let servings = value['servings'];
            console.log("val: " + value['title']);
            console.log(value)
            for (let j = 0; j < value['extendedIngredients'].length; j++) {
              this.ingredients.push({
                name: value['extendedIngredients'][j].nameClean,
                unit: value['extendedIngredients'][j].unit,
                amount: value['extendedIngredients'][j].amount / servings,
                aisle: value['extendedIngredients'][j].aisle
              })
              if (this.ingredientMap.get(value['extendedIngredients'][j].nameClean) == undefined) {
                this.ingredientMap.set(value['extendedIngredients'][j].nameClean, this.ingredients[i]);
              }
              else {
                const editIngredient = this.ingredientMap.get(value['extendedIngredients'][j].nameClean);
                if (editIngredient) {
                  if (editIngredient.unit == this.ingredients[i].unit) {
                    this.ingredients[i].name = this.ingredients[i].name + " (1)";
                    this.ingredientMap.set(this.ingredients[i].name, this.ingredients[i]);
                  }
                  else {
                    editIngredient.amount += this.ingredients[i].amount;
                    this.ingredientMap.set(value['extendedIngredients'][j].nameClean, editIngredient);
                  }
                }
              }
              i = i + 1;
            }
          }
        }
      })
    });


  }

  generatePdf() {

    // Source HTMLElement or a string containing HTML.
    var element_begin = '<!DOCTYPE html> <html><body><div style="letter-spacing: 1px;"><h1>Food Planner Ingredient List</h1><hr><ul>'
    var element_end = "</ul> </div> </body></html>"

    const doc = new jspdf();
    let i = 10;
    this.ingredientMap.forEach((value, key) => {
      console.log(value);
      const line = "<li>" + value.amount.toFixed(2) + " " + value.unit + " " + value.name + ". (Aisle: " + value.aisle + ") </li>";
      element_begin += line;
      i += 10;
    });

    var element_final = element_begin + element_end

    doc.html(element_final, {
      callback: function (doc) {
        // Save the PDF
        doc.save('foodplanner-ingredients.pdf');
      },
      x: 15,
      y: 15,
      width: 170, //target width in the PDF document
      windowWidth: 650 //window width in CSS pixels
    });
  }
}
