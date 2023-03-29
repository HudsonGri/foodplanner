import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { tap, catchError } from 'rxjs/operators';
import { of } from 'rxjs';
//import { DataService } from '../data.service';
  
@Component({
  selector: 'app-preferences',
  templateUrl: './preferences.component.html',
  styleUrls: ['./preferences.component.css']
})

export class PreferencesComponent {
  allergies = false;
  vegetarian = false;
  vegan = false;

  // constructor(private dataService: DataService) {}

  // savePreferences() {
  //   const preferences = [
  //     { name: 'allergies', value: this.allergies },
  //     { name: 'vegetarian', value: this.vegetarian },
  //     { name: 'vegan', value: this.vegan }
  //   ];
  //   this.dataService.addData(preferences)
  //     .subscribe(response => {
  //       console.log('Preferences saved to backend:', response);
  //     });
  // }

  constructor(private http: HttpClient) {}

  savePreferences() {
    const preferences = [
      { name: 'allergies', value: this.allergies },
      { name: 'vegetarian', value: this.vegetarian },
      { name: 'vegan', value: this.vegan }
    ];
    const url = 'https://reqres.in/api/users';
    this.http.post(url, preferences).pipe(
      tap(response => {
        console.log('Boolean values saved successfully');
        console.log(this.allergies);
      }),
      catchError(error => {
        console.error('Error saving boolean values:', error);
        return of(null); // Return observable with value `null`
      })
    ).subscribe();
  }
}
