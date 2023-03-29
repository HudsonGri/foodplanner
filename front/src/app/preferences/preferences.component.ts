import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { AuthService } from '@auth0/auth0-angular';
  
@Component({
  selector: 'app-preferences',
  templateUrl: './preferences.component.html',
  styleUrls: ['./preferences.component.css']
})

export class PreferencesComponent {
  
  userID: any;
  a_user: any;
  responseUserData: any;

  //diets
  vegan: boolean;
  vegetarian: boolean;
  pescatarian: boolean;
  ketogenic: boolean;

  //allergies more can be added later
  gluten: boolean;
  dairy: boolean;
  nut: boolean;
  shellfish: boolean;

  //cuisines more added later
  americanCuisine: boolean;
  mexicanCuisine: boolean;
  chineseCuisine: boolean;
  mediterraneanCuisine: boolean;
  italianCuisine: boolean;

  //overall meal filters
  healthiness: any;
  cookingSkillLevel: any;
  mealCost: any;

  constructor(public auth: AuthService, private http: HttpClient) {}

  /*
  // savePreferences() {
  //   const preferences = [
  //     { name: 'allergies', value: this.allergies },
  //     { name: 'vegetarian', value: this.vegetarian },
  //     { name: 'vegan', value: this.vegan }
  //   ];
  //   const url = 'https://reqres.in/api/users';
  //   this.http.post(url, preferences).pipe(
  //     tap(response => {
  //       console.log('Boolean values saved successfully');
  //       console.log(this.allergies);
  //     }),
  //     catchError(error => {
  //       console.error('Error saving boolean values:', error);
  //       return of(null); // Return observable with value `null`
  //     })
  //   ).subscribe();
  // } */

  ngOnInit() {
    // Simple POST request with a JSON body and response type <any>


    this.auth.user$.subscribe((user: any) => {
      this.a_user = user;
      console.log(this.a_user)
      this.http.get<any>('http://localhost:8080/users/' + this.a_user.email).subscribe(data => {
        this.responseUserData = data.data;
        this.userID = data.data.id;
        // for (const [key, value] of Object.entries(data.data.cuisine_choices)) {
        //   if (value['image'] == undefined) {
        //     value['image'] = 'https://images.placeholders.dev/?width=600&height=300&text=No image';
        //     if (Math.floor(Math.random() * 100) == 2) {
        //       value['image'] = value['image'] + ' :('
        //     }
        //   }
          
        // }
      })
    });


  }

  savePreferences() {
    // PATCH to update user preferences
    const preferences = {
      diets: {
        vegan: this.vegan,
        vegetarian: this.vegetarian,
        pescatarian: this.pescatarian,
        ketogenic: this.ketogenic
      },
      allergies: {
        gluten: this.gluten,
        dairy: this.dairy,
        nut: this.nut,
        shellfish: this.shellfish
      },
      cuisines: {
        americanCuisine: this.americanCuisine,
        mexicanCuisine: this.mexicanCuisine,
        chineseCuisine: this.chineseCuisine,
        mediterraneanCuisine: this.mediterraneanCuisine,
        italianCuisine: this.italianCuisine
      },
      overallMealFilters: {
        healthiness: this.healthiness,
        cookingSkillLevel: this.cookingSkillLevel,
        mealCost: this.mealCost
      }
    };

    this.auth.user$.subscribe((user:any) => {
       this.a_user = user;
      console.log(this.a_user)
      this.http.patch<any>('http://localhost:8080/users/' + this.userID, preferences).subscribe(data => {  
        console.log("Preferences Saved Successfully");
      })
    });

  
  }
}
