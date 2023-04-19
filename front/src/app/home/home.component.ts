import { Component } from '@angular/core';
import { map } from 'rxjs/operators';
import { Breakpoints, BreakpointObserver } from '@angular/cdk/layout';
import { AuthService, User } from '@auth0/auth0-angular';
import { HttpClient } from '@angular/common/http';
import { HttpHeaders } from '@angular/common/http';
import gen_token from '../token_gen'

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent {
  /** Based on the screen size, switch from standard to one column per row */
  cards = this.breakpointObserver.observe(Breakpoints.Handset).pipe(
    map(({ matches }) => {
      if (matches) {
        return [
          { title: 'Card 2', cols: 1, rows: 1 },
          { title: 'Card 3', cols: 1, rows: 1 },
          { title: 'Card 4', cols: 1, rows: 1 }
        ];
      }

      return [
        { title: 'Card 2', cols: 1, rows: 1 },
        { title: 'Card 3', cols: 1, rows: 2 },
        { title: 'Card 4', cols: 1, rows: 1 }
      ];
    })
  );


  a_user: any;

  constructor(private breakpointObserver: BreakpointObserver, public auth: AuthService, private http: HttpClient) { }

  ngOnInit() {
    // Simple POST request with a JSON body and response type <any>

    console.log("running")
    this.checkUser();
  }

  checkUser() {

    this.auth.user$.subscribe((user: any) => {

      this.a_user = user;
      console.log(user)
      this.http.get<any>(`http://localhost:8080/users/${this.a_user.email}/${gen_token(this.a_user.sub)}`).subscribe(data => {

        if (data['error'] == "Record not found!") {
          console.log('not found')

          // New user data
          const data = {
            "name": user.name,
            "email": user.email,
            "skill_level": 2,
            "cuisine_choices": `{
              "allergies": {
                "dairy": false,
                "egg": false,
                "gluten": false,
                "grain": false,
                "peanut": false,
                "seafood": false,
                "sesame": false,
                "shellfish": false,
                "soy": false,
                "sulfite": false,
                "tree_nut": false,
                "wheat": false
              },
              "cuisines": {
                "african": false,
                "american": false,
                "british": false,
                "cajun": false,
                "caribbean": false,
                "chinese": false,
                "eastern_european": false,
                "european": false,
                "french": false,
                "german": false,
                "greek": false,
                "indian": false,
                "irish": false,
                "italian": false,
                "japanese": false,
                "jewish": false,
                "korean": false,
                "latin_american": false,
                "mediterranean": false,
                "mexican": false,
                "middle_eastern": false,
                "nordic": false,
                "southern": false,
                "spanish": false,
                "thai": false,
                "vietnamese": false
              },
              "diets": {
                "gluten_free": false,
                "ketogenic": false,
                "lacto_vegetarian": false,
                "low_fodmap": false,
                "ovo_vegetarian": false,
                "paleo": false,
                "pescetarian": false,
                "primal": false,
                "vegan": false,
                "vegetarian": false,
                "whole30": false
              },
              "overallMealFilters": {}
            }`,
            "recipes": `{}`,
            "week_recipes": `{}`
          };

          const options = {
            headers: new HttpHeaders().set('Content-Type', 'application/json')
          };
          this.http.post('http://localhost:8080/users', data, options).subscribe(response => {
              console.log(response);
              
            });
        }

      })
    });

  }
}

