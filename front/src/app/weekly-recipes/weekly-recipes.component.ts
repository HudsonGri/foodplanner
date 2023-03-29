import { Component } from '@angular/core';
import { AuthService } from '@auth0/auth0-angular';
import { HttpClient } from '@angular/common/http';
import { MatButtonModule } from '@angular/material/button';
import { MatCardModule } from '@angular/material/card';
import { MatIcon } from '@angular/material/icon';
import { MatExpansionModule } from '@angular/material/expansion';
import { HttpHeaders } from '@angular/common/http';


interface Card {
  title: string;
  image: string;
  link: string;
  description: string;
  instructions: string;
}

@Component({
  selector: 'app-weeklyrecipes',
  templateUrl: './weekly-recipes.component.html',
  styleUrls: ['./weekly-recipes.component.css']
})

export class WeeklyRecipesComponent {
  
  cards: Card[] = [];
  
  userIP: any;
  a_user: any;
  responseUserData: any;

  constructor(public auth: AuthService, private http: HttpClient) { }

  generateRecipes(){
    this.auth.user$.subscribe((user:any) => {
      this.a_user = user;

      // Send request to flask
      this.http.get<any>('http://localhost:5001/recipe?usr_email=' + this.a_user.email).subscribe(data => {
        console.log(data)
        for (const [key, value] of Object.entries(data.recipe_result)) {
          if (value['image'] == undefined) {
            value['image'] = 'https://images.placeholders.dev/?width=600&height=300&text=No image';
            if (Math.floor(Math.random() * 100) == 2) {
              value['image'] = value['image'] + ' :('
            }
          }
          this.cards.push({
            title: key,
            image: value['image'],
            link: value['sourceUrl'],
            description: value['summary'],
            instructions: value['instructions']
          })
        }
        })

    });
  }

  cardClicked(event: MouseEvent, card: Card) {
    // Do something when the card is clicked
    console.log('Card clicked!', card.title);
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
        });
    });
  }

}