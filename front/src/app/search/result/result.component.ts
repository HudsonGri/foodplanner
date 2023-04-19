import { Component, Inject } from '@angular/core';
import { AuthService } from '@auth0/auth0-angular';
import { HttpClient } from '@angular/common/http';
import { ActivatedRoute } from '@angular/router';
import { HttpHeaders } from '@angular/common/http';
import { MatSnackBar } from '@angular/material/snack-bar';
import {MatDialog, MAT_DIALOG_DATA} from '@angular/material/dialog';
import gen_token from '../../token_gen'

interface Card {
  title: string;
  image: string;
  link: string;
  instructions: string;
  val: any;
}

@Component({
  selector: 'app-result',
  templateUrl: './result.component.html',
  styleUrls: ['./result.component.css']
})
export class ResultComponent{

  userIP: any;
  a_user: any;
  responseUserData: any;

  constructor(public auth: AuthService, private http: HttpClient, private route: ActivatedRoute, private snackBar: MatSnackBar, private dialog: MatDialog) { }

  cuisineType: string;

  cards: Card[] = [];

  pending: boolean = false;

  ngOnInit(): void {
    this.route.paramMap.subscribe(params => {
      this.cuisineType = params.get('cuisineType')!;
    });

    this.generateRecipes();
  }


  openDialog(type: any, card: Card) {
    // Removing 
    card.val.instructions = card.val.instructions.replace(/\.(?=[^\.]*\.)/g, '<br><br>');

    // 1 for instructions, 2 for description
    card.val.link = type;
    this.dialog.open(RecipeDialog3, {
      data: card.val,
    });
  }

  generateRecipes() {
    this.pending = true;
    console.log("pending");
    
      // Send request to flask
    this.http.get<any>('http://localhost:5001/search?cuisine_type=' + this.cuisineType).subscribe(data => {
      console.log(data)
      this.pending = false;
        for (const [key, value] of Object.entries(data.data)) {
          console.log('Here')
          console.log(value)

          if (value['image'] == undefined) {
            value['image'] = 'https://images.placeholders.dev/?width=600&height=300&text=No image';
            if (Math.floor(Math.random() * 100) == 2) {
              value['image'] = value['image'] + ' :('
            }
          }
          this.cards.push({
            title: value['title'],
            image: value['image'],
            link: value['sourceUrl'],
            instructions: value['instructions'],
            val: value
          })
        }
      
    })

    console.log(this.cards)

  }

  addRecipe(event: MouseEvent, card: Card) {
    this.auth.user$.subscribe(user => {
      const usr_email = this.a_user.email;
      const data = card;
      const options = {
        headers: new HttpHeaders().set('Content-Type', 'application/json'),
        params: { usr_email } // sending the email as a query parameter
      };
      this.http.post('http://localhost:5001/add', data, options)
        .subscribe(response => {
          console.log(response);
          this.generateRecipes();
        });

    });
    this.addMessage();
  }

  addMessage() {
    let message = "Recipe was added!"
    let action = "Dismiss"
    this.snackBar.open(message, action, {
      duration: 2500
    });
  }

}

@Component({
  selector: 'recipe-dialog3',
  templateUrl: 'recipe-dialog3.html',
})
export class RecipeDialog3 {
  constructor(@Inject(MAT_DIALOG_DATA) public data: any) {}
}
