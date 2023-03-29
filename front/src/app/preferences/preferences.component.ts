import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { AuthService } from '@auth0/auth0-angular';
  
@Component({
  selector: 'app-preferences',
  templateUrl: './preferences.component.html',
  styleUrls: ['./preferences.component.css']
})

export class PreferencesComponent {
  
  userIP: any;
  a_user: any;
  responseUserData: any;

  vegan: boolean;
  vegetarian: boolean;
  pescatarian: boolean;
  ketogenic: boolean;
  gluten: boolean;
  dairy: boolean;
  nut: boolean;
  shellfish: boolean;
  healthiness: any;
  cookingSkillLevel: any;
  mealCost: any;

  constructor(public auth: AuthService, private http: HttpClient) {}

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
  // }

  savePreferences() {
    // PATCH to update user preferences


      this.auth.user$.subscribe((user:any) => {
        this.a_user = user;
        console.log(this.a_user)
        this.http.patch<any>('http://localhost:8080/users/' + this.a_user.email, 0).subscribe(data => {

        })
      });

  
  }
}
