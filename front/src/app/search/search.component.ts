import { Component } from '@angular/core';
import { AuthService } from '@auth0/auth0-angular';
import { HttpClient } from '@angular/common/http';

interface Card {
  title: string;
  image: string;
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


      this.auth.user$.subscribe((user:any) => {
        this.a_user = user;
        console.log(this.a_user)
        this.http.get<any>('http://localhost:8080/users/' + this.a_user.email).subscribe(data => {
          this.responseUserData = data.data
          console.log(data)
          for (const [key, value] of Object.entries(data.data.recipes)) {
            this.cards.push({
              title: key,
              image: value['image']
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