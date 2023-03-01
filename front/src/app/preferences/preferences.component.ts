import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';
//import { DataService } from '../data.service';

// @Component({
  // selector: 'app-preferences',
  // templateUrl: './preferences.component.html',
  // styleUrls: ['./preferences.component.css']
  
@Component({
  selector: 'app-preferences',
  template: `
    <form (submit)="savePreferences()">
      <label>
        <input type="checkbox" name="allergies" [(ngModel)]="allergies">
        Allergies
      </label>
      <label>
        <input type="checkbox" name="vegetarian" [(ngModel)]="vegetarian">
        Vegetarian
      </label>
      <label>
        <input type="checkbox" name="vegan" [(ngModel)]="vegan">
        Vegan
      </label>
      <button type="submit">Save</button>
    </form>
  `
})
// })
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
    const url = 'https://reqres.in/api/preferences';
    this.http.post(url, preferences).subscribe(response => {
      console.log('Boolean values saved successfully');
    }, error => {
      console.error('Error saving boolean values:', error);
    });
  }
}
