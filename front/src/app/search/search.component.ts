import { Component } from '@angular/core';
import { AuthService } from '@auth0/auth0-angular';
import { HttpClient } from '@angular/common/http';

interface Card {
  title: string;
  image: string;
  link: string
}


@Component({
  selector: 'app-search',
  templateUrl: './search.component.html',
  styleUrls: ['./search.component.css']
})
export class SearchComponent {

  cards: Card[] = [];


  userIP: any;
  a_user: any;
  responseUserData: any;

  constructor(public auth: AuthService, private http: HttpClient) { }

  ngOnInit() {
    // Simple POST request with a JSON body and response type <any>


    this.auth.user$.subscribe((user: any) => {
      this.a_user = user;
      console.log(this.a_user)
      this.http.get<any>('http://localhost:8080/users/' + this.a_user.email).subscribe(data => {
        this.responseUserData = data.data
        for (const [key, value] of Object.entries(data.data.recipes)) {
          if (value['image'] == undefined) {
            value['image'] = 'https://images.placeholders.dev/?width=600&height=300&text=No image';
            if (Math.floor(Math.random() * 100) == 2) {
              value['image'] = value['image'] + ' :('
            }
          }

          this.cards.push({
            title: key,
            image: value['image'],
            link: value['sourceUrl']
          })
        }




      })
    });


  }


  cardClicked(event: MouseEvent, card: Card) {
    // Do something when the card is clicked
    console.log('Card clicked!', card.title);
  }
}