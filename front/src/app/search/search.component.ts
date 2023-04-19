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
  cuisineImages : string[] = ["https://spoonacular.com/recipeImages/716268-556x370.jpg", "https://spoonacular.com/recipeImages/650255-556x370.jpg", "https://spoonacular.com/recipeImages/658300-556x370.jpg", "https://spoonacular.com/recipeImages/636733-556x370.jpg", 
  "https://spoonacular.com/recipeImages/637099-556x370.jpg", "https://spoonacular.com/recipeImages/648474-556x370.jpg", "https://spoonacular.com/recipeImages/664396-556x370.jpg", "https://spoonacular.com/recipeImages/631863-556x370.jpg",
  "https://spoonacular.com/recipeImages/664533-556x370.jpg", "https://spoonacular.com/recipeImages/649183-556x370.jpg", "https://spoonacular.com/recipeImages/660842-556x370.jpg", "https://spoonacular.com/recipeImages/650606-556x370.jpg",
  "https://spoonacular.com/recipeImages/646034-556x370.jpg", "https://spoonacular.com/recipeImages/622598-556x370.jpg", "https://spoonacular.com/recipeImages/648460-556x370.jpg",
  "https://spoonacular.com/recipeImages/653234-556x370.jpg", "https://spoonacular.com/recipeImages/665379-556x370.jpg", "https://spoonacular.com/recipeImages/661071-556x370.jpg",
  "https://spoonacular.com/recipeImages/659109-556x370.jpg", "https://spoonacular.com/recipeImages/634514-556x370.jpg", "https://spoonacular.com/recipeImages/649886-556x370.jpg", "https://spoonacular.com/recipeImages/633830-556x370.jpg", "https://spoonacular.com/recipeImages/715455-556x370.jpg", 
  "https://spoonacular.com/recipeImages/648348-556x370.jpg", "https://spoonacular.com/recipeImages/645541-556x370.jpg", "https://spoonacular.com/recipeImages/664708-556x370.jpg"]


  constructor(public auth: AuthService, private http: HttpClient, private router: Router) { }

  ngOnInit() {
    // Simple POST request with a JSON body and response type <any>


    this.generateCategories()


  }

  generateCategories(){

    
    for (let i = 0; i < this.cuisines.length; i++){
      
      let cuisineType = this.cuisines[i].toLowerCase();
      cuisineType = cuisineType.replace(/\s+/g, '_');
      console.log(cuisineType)

      this.cards.push({
        title: this.cuisines[i],
        image: this.cuisineImages[i]
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