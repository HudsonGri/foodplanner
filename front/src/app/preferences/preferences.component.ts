import { Component } from '@angular/core';
import { AuthService } from '@auth0/auth0-angular';
import { HttpClient } from '@angular/common/http';
import { MatSnackBar } from '@angular/material/snack-bar';
import gen_token from '../token_gen'


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
  gluten_free: boolean = false;
  ketogenic: boolean = false;
  vegetarian: boolean = false;
  lacto_vegetarian: boolean = false;
  ovo_vegetarian: boolean = false;
  vegan: boolean = false;
  pescetarian: boolean = false;
  paleo: boolean = false;
  primal: boolean = false;
  low_fodmap: boolean = false;
  whole30: boolean = false;

  //allergies more can be added later
  dairy: boolean = false;
  egg: boolean = false;
  gluten: boolean = false;
  grain: boolean = false;
  peanut: boolean = false;
  seafood: boolean = false;
  sesame: boolean = false;
  shellfish: boolean = false;
  soy: boolean = false;
  sulfite: boolean = false;
  tree_nut: boolean = false;
  wheat: boolean = false;

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

  constructor(public auth: AuthService, private http: HttpClient, private snackBar: MatSnackBar) { }

  addMessage() {
    let message = "Preferences saved!"
    let action = "Dismiss"
    this.snackBar.open(message, action, {
      duration: 2500
    });
  }

  getPreferences() {
    this.auth.user$.subscribe((user: any) => {
      this.a_user = user;
      console.log(this.a_user)
      this.http.get<any>(`http://localhost:8080/users/${this.a_user.email}/${gen_token(this.a_user.sub)}`).subscribe( data => {
        this.responseUserData = data.data;
        console.log(this.responseUserData);
        this.userID = data.data.id;

        const diets = data.data.cuisine_choices.diets;
        this.gluten_free = diets.gluten_free;
        this.ketogenic = diets.ketogenic;
        this.vegetarian = diets.vegetarian;
        this.lacto_vegetarian = diets.lacto_vegetarian;
        this.ovo_vegetarian = diets.ovo_vegetarian;
        this.vegan = diets.vegan;
        this.pescetarian = diets.pescetarian;
        this.paleo = diets.paleo;
        this.primal = diets.primal;
        this.low_fodmap = diets.low_fodmap;
        this.whole30 = diets.whole30;

        const allergies = data.data.cuisine_choices.allergies;
        this.dairy = allergies.dairy;
        this.egg = allergies.egg;
        this.gluten = allergies.gluten;
        this.grain = allergies.grain;
        this.peanut = allergies.peanut;
        this.seafood = allergies.seafood;
        this.sesame = allergies.sesame;
        this.shellfish = allergies.shellfish;
        this.soy = allergies.soy;
        this.sulfite = allergies.sulfite;
        this.tree_nut = allergies.tree_nut;
        this.wheat = allergies.wheat;

        const cuisines = data.data.cuisine_choices.cuisines;
        this.african = cuisines.african;
        this.american = cuisines.american;
        this.british = cuisines.british;
        this.cajun = cuisines.cajun;
        this.caribbean = cuisines.caribbean;
        this.chinese = cuisines.chinese;
        this.eastern_european = cuisines.eastern_european;
        this.european = cuisines.european;
        this.french = cuisines.french;
        this.german = cuisines.german;
        this.greek = cuisines.greek;
        this.indian = cuisines.indian;
        this.irish = cuisines.irish;
        this.italian = cuisines.italian;
        this.japanese = cuisines.japanese;
        this.jewish = cuisines.jewish;
        this.korean = cuisines.korean;
        this.latin_american = cuisines.latin_american;
        this.mediterranean = cuisines.mediterranean;
        this.mexican = cuisines.mexican;
        this.middle_eastern = cuisines.middle_eastern;
        this.nordic = cuisines.nordic;
        this.southern = cuisines.southern;
        this.spanish = cuisines.spanish;
        this.thai = cuisines.thai;
        this.vietnamese = cuisines.vietnamese;

        this.healthiness = data.data.cuisine_choices.overallMealFilters.healthiness;
        this.cookingSkillLevel = data.data.cuisine_choices.overallMealFilters.cookingSkillLevel;
        this.mealCost = data.data.cuisine_choices.overallMealFilters.mealCost;

        console.log("Healthiness " + this.healthiness);
        console.log("Cooking Skill Level " + this.cookingSkillLevel);
        console.log("Meal Cost " + this.mealCost);
      })
    });
  }

  ngOnInit() {
    // Simple POST request with a JSON body and response type <any>
      this.getPreferences();
  }

  savePreferences() {
    this.addMessage();
    // PATCH to update user preferences
    const preferences = {
      diets: {
        gluten_free: this.gluten_free,
        ketogenic: this.ketogenic,
        vegetarian: this.vegetarian,
        lacto_vegetarian: this.lacto_vegetarian,
        ovo_vegetarian: this.ovo_vegetarian,
        vegan: this.vegan,
        pescetarian: this.pescetarian,
        paleo: this.paleo,
        primal: this.primal,
        low_fodmap: this.low_fodmap,
        whole30: this.whole30
      },
      allergies: {
        dairy: this.dairy,
        egg: this.egg,
        gluten: this.gluten,
        grain: this.grain,
        peanut: this.peanut,
        seafood: this.seafood,
        sesame: this.sesame,
        shellfish: this.shellfish,
        soy: this.soy,
        sulfite: this.sulfite,
        tree_nut: this.tree_nut,
        wheat: this.wheat
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
      this.http.patch<any>(`http://localhost:8080/users/${this.a_user.email}/${gen_token(this.a_user.sub)}`, this.responseUserData).subscribe(data => {
        console.log("Preferences Saved Successfully");
      })
    });


  }
}
