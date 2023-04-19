import { Component } from '@angular/core';
import { AuthService } from '@auth0/auth0-angular';
import { HttpClient } from '@angular/common/http';
import { ActivatedRoute } from '@angular/router';
import { HttpHeaders } from '@angular/common/http';
import { MatSnackBar } from '@angular/material/snack-bar';
import gen_token from '../../token_gen'

interface Card {
  title: string;
  image: string;
  link: string;
  instructions: string;
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

  constructor(public auth: AuthService, private http: HttpClient, private route: ActivatedRoute, private snackBar: MatSnackBar) { }

  cuisineType: string;

  cards: Card[] = [];

  pending: boolean = false;

  ngOnInit(): void {
    this.route.paramMap.subscribe(params => {
      this.cuisineType = params.get('cuisineType')!;
    });

    this.generateRecipes();
  }

  generateRecipes() {
    this.pending = true;
    console.log("pending");
    
      // Send request to flask
    this.http.get<any>('http://localhost:5001/search?cuisine_type=' + this.cuisineType).subscribe(data => {
      console.log(data)
      console.log(data.data.length)
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
            instructions: value['instructions']
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
