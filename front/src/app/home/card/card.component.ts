import { Component } from '@angular/core';
import { AuthService } from '@auth0/auth0-angular';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-card',
  templateUrl: './card.component.html',
  styleUrls: ['./card.component.css']
})
export class CardComponent {
  
  userIP:any;
  
  constructor(public auth: AuthService, private http: HttpClient) {}


  ngOnInit() {      
    // Simple POST request with a JSON body and response type <any>
    this.http.get<any>('http://ip-api.com/json').subscribe(data => {
        this.userIP = data.query;
        
    })}
}
