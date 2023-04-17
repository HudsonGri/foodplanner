import { Component } from '@angular/core';
import { AuthService } from '@auth0/auth0-angular';
import { HttpClient } from '@angular/common/http';
import { HttpHeaders } from '@angular/common/http';
import * as moment from 'moment';
moment().format();

interface Card {
  title: string;
  image: string;
  link: string;
  description: string;
  instructions: string;
}

@Component({
  selector: 'app-archive',
  templateUrl: './archive.component.html',
  styleUrls: ['./archive.component.css']
})
export class ArchiveComponent {

  userIP: any;
  a_user: any;
  responseUserData: any;

  pending_your_recipes : boolean = false;

  archive_cards: Card[] = [];

  constructor(public auth: AuthService, private http: HttpClient) {}

  ngOnInit() {

    this.viewArchivedRecipes();


  }



  viewArchivedRecipes() {
    this.pending_your_recipes = true;

    this.auth.user$.subscribe((user: any) => {
      console.log("loading this week")
      this.a_user = user;
      this.archive_cards = [];
      this.http.get<any>('http://localhost:8080/users/' + this.a_user.email).subscribe(data => {
        this.pending_your_recipes = false;

        
        for (const [key, value] of Object.entries(data.data.week_recipes)) {
          console.log(value['timestamp'])
          console.log(moment().unix())

          // Everything created before this should be expired
          var expire_time = moment().subtract(5, 'minutes');

          console.log(moment(moment.unix(value['timestamp'])).fromNow())

          if (value['timestamp'] <= expire_time.unix()) {
          if (value['image'] == undefined) {
            value['image'] = 'https://images.placeholders.dev/?width=600&height=300&text=No image';
            if (Math.floor(Math.random() * 100) == 2) {
              value['image'] = value['image'] + ' :('
            }
          }
          this.archive_cards.push({
            title: key,
            image: value['image'],
            link: value['sourceUrl'],
            description: "Generated: " + moment(moment.unix(value['timestamp'])).fromNow(),
            instructions: value['instructions']
          })
     
        }
      }

      })
    });

  }
  
  addRecipe(event: MouseEvent, card: Card) {
    this.auth.user$.subscribe(user => {
      const usr_email = this.a_user.email; 
      const data = card;
      const options = {
        headers: new HttpHeaders().set('Content-Type', 'application/json'),
        params: { usr_email } // sending the email as a query parameter
      };
      this.http.post('http://localhost:5001/add', data, options)
        .subscribe(response => {
          console.log(response);
          this.viewArchivedRecipes();
        });

        
    });
  }

}
