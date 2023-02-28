import { Component } from '@angular/core';
import { AuthService } from '@auth0/auth0-angular';
import { HttpClient } from '@angular/common/http';
import { empty } from 'rxjs';

@Component({
  selector: 'app-card',
  templateUrl: './card.component.html',
  styleUrls: ['./card.component.css']
})
export class CardComponent {

  userIP: any;
  a_user: any;

  constructor(public auth: AuthService, private http: HttpClient) { }


  ngOnInit() {
    // Simple POST request with a JSON body and response type <any>
    this.http.get<any>('http://ip-api.com/json').subscribe(data => {
      this.userIP = data.query;

      this.auth.user$.subscribe(user => {
        this.a_user = user;
        console.log(this.a_user)

        this.http.post<any>('https://reqres.in/api/users', JSON.stringify({
          "name": this.a_user.email,
          "job": "leader"
      }),).subscribe(data => {
          console.log(data)

        })
      });

    })
  }
}
