import { Component } from '@angular/core';
import { AuthService } from '@auth0/auth0-angular';
import { HttpClient } from '@angular/common/http';
import { empty } from 'rxjs';
import gen_token from '../../token_gen'

@Component({
  selector: 'app-card',
  templateUrl: './card.component.html',
  styleUrls: ['./card.component.css']
})
export class CardComponent {

  userIP: any;
  a_user: any;
  responseUserData: any;
  recipeList: any;

  constructor(public auth: AuthService, private http: HttpClient) { }

  ngOnInit() {
    // Simple POST request with a JSON body and response type <any>


      this.auth.user$.subscribe((user:any) => {
        this.a_user = user;
        console.log(this.a_user)
        this.http.get<any>(`http://localhost:8080/users/${this.a_user.email}/${gen_token(this.a_user.sub)}`).subscribe(data => {
          this.responseUserData = data.data
          console.log(data)
          console.log(this.responseUserData)
          this.storeCuisine()
        })
      });

    
  }

  storeCuisine = (): any => {
    for (let key in this.responseUserData.recipes) {
      this.recipeList[key] = this.responseUserData.recipes[key];
    }
  };

}
