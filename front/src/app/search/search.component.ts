import { Component } from '@angular/core';
import { AuthService } from '@auth0/auth0-angular';
import { HttpClient } from '@angular/common/http';
import { Router } from '@angular/router';

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

  cuisines : string[] = ["African", "American", "British", "Cajun", "Caribbean", "Chinese", "Eastern European", "European", "French", "German",
    "Greek", "Indian", "Irish", "Italian", "Japanese", "Jewish", "Korean", "Latin American", "Mediterranean", "Mexican", "Middle Eastern", "Nordic", "Southern", "Spanish", "Thai", "Vietnamese"];


  constructor(public auth: AuthService, private http: HttpClient, private router: Router) { }

  ngOnInit() {
    // Simple POST request with a JSON body and response type <any>


    this.generateCategories()


  }

  generateCategories(){
    for (let i = 0; i < this.cuisines.length; i++){
      this.cards.push({
        title: this.cuisines[i],
        image: 'https://images.placeholders.dev/?width=600&height=300&text=No image'
      })
    }
  }


  cardClicked(event: MouseEvent, card: Card) {
    // Do something when the card is clicked
    let cuisineType = card.title.toLowerCase();
    cuisineType = cuisineType.replace(/\s+/g, '_');
    this.router.navigate(['/cuisine', cuisineType]);
    console.log('Card clicked!', card.title);
  }
}