import { Component } from '@angular/core';
import { AuthService } from '@auth0/auth0-angular';
import { HttpClient } from '@angular/common/http';
import { MatButtonModule } from '@angular/material/button';
import jspdf from 'jspdf';

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
      this.http.get<any>('http://localhost:8080/users/' + this.a_user.email).subscribe(data => {
        let i = 0;
        for (const [key, value] of Object.entries(data.data.recipes)) {
          for (let j = 0; j < value['extendedIngredients'].length; j++){
            this.ingredients.push({
              name: value['extendedIngredients'][j].nameClean,
              unit: value['extendedIngredients'][j].unit,
              amount: value['extendedIngredients'][j].amount,
              aisle: value['extendedIngredients'][j].aisle
            })
            if (this.ingredientMap.get(value['extendedIngredients'][j].nameClean) == undefined){
              this.ingredientMap.set(value['extendedIngredients'][j].nameClean, this.ingredients[i]);
            }
            else {
              const editIngredient = this.ingredientMap.get(value['extendedIngredients'][j].nameClean);
              if (editIngredient){
                if (editIngredient.unit == this.ingredients[i].unit){
                  this.ingredients[i].name = this.ingredients[i].name + " (1)";
                  this.ingredientMap.set(this.ingredients[i].name, this.ingredients[i]);
                }
                else {
                  editIngredient.amount += this.ingredients[i].amount;
                  this.ingredientMap.set(value['extendedIngredients'][j].nameClean, editIngredient);
                }
              }
            }
            i = i+1;
          }
        }
        console.log(this.ingredients)

      })
    });


  }
  
  generatePdf() {
    const doc = new jspdf();
    let i = 10;
    this.ingredientMap.forEach((value, key) => {
      console.log(value);
      const line = value.amount + " " + value.unit + " " + value.name + ". (Aisle: " + value.aisle + ")";
      doc.text(line, 10, i);
      i+=10;
    });
    doc.save('my-document.pdf');
  }
}
