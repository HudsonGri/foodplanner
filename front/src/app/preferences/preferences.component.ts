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
  vegan: boolean = false;
  vegetarian: boolean = false;
  pescatarian: boolean = false;
  ketogenic: boolean = false;

  //allergies more can be added later
  gluten: boolean = false;
  dairy: boolean = false;
  nut: boolean = false;
  shellfish: boolean = false;

  //cuisines more added later

  
  african: boolean = false;
  american: boolean = false;
  british: boolean = false;
  cajun: boolean = false;
  caribbean: boolean = false;
  chinese: boolean = false;
  eastern_european: boolean = false;
  european: boolean = false;
  french: boolean = false;
  german: boolean = false;
  greek: boolean = false;
  indian: boolean = false;
  irish: boolean = false;
  italian: boolean = false;
  japanese: boolean = false;
  jewish: boolean = false;
  korean: boolean = false;
  latin_american: boolean = false;
  mediterranean: boolean = false;
  mexican: boolean = false;
  middle_eastern: boolean = false;
  nordic: boolean = false;
  southern: boolean = false;
  spanish: boolean = false;
  thai: boolean = false;
  vietnamese: boolean = false;


  //overall meal filters
  healthiness: any = 2;
  cookingSkillLevel: any = 2;
  mealCost: any = 2;

  constructor(public auth: AuthService, private http: HttpClient) { }


  ngOnInit() {
    // Simple POST request with a JSON body and response type <any>


    this.auth.user$.subscribe((user: any) => {
      this.a_user = user;
      console.log(this.a_user)
      this.http.get<any>('http://localhost:8080/users/' + this.a_user.email).subscribe(data => {
        this.responseUserData = data.data;
        this.userID = data.data.id;
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
        african: this.african,
        american: this.american,
        british: this.british,
        cajun: this.cajun,
        caribbean: this.caribbean,
        chinese: this.chinese,
        eastern_european: this.eastern_european,
        european: this.european,
        french: this.french,
        german: this.german,
        greek: this.greek,
        indian: this.indian,
        irish: this.irish,
        italian: this.italian,
        japanese: this.japanese,
        jewish: this.jewish,
        korean: this.korean,
        latin_american: this.latin_american,
        mediterranean: this.mediterranean,
        mexican: this.mexican,
        middle_eastern: this.middle_eastern,
        nordic: this.nordic,
        southern: this.southern,
        spanish: this.spanish,
        thai: this.thai,
        vietnamese: this.vietnamese
      },
      overallMealFilters: {
        healthiness: this.healthiness,
        cookingSkillLevel: this.cookingSkillLevel,
        mealCost: this.mealCost
      }
    };


    this.auth.user$.subscribe((user: any) => {
      this.a_user = user;
      console.log(this.userID)
      console.log(preferences)
      this.responseUserData['cuisine_choices'] = JSON.stringify(preferences);
      this.http.patch<any>('http://localhost:8080/users/' + this.userID, this.responseUserData).subscribe(data => {
        console.log("Preferences Saved Successfully");
      })
    });


  }
}
