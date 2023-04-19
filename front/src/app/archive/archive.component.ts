import { Component, Inject } from '@angular/core';
import { AuthService } from '@auth0/auth0-angular';
import { HttpClient } from '@angular/common/http';
import { HttpHeaders } from '@angular/common/http';
import * as moment from 'moment';
import gen_token from '../token_gen'
import check_expire from '../expire';
import {MatDialog, MAT_DIALOG_DATA} from '@angular/material/dialog';


moment().format();

interface Card {
  title: string;
  image: string;
  link: string;
  description: string;
  instructions: string;
  val: any;
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

  pending_your_recipes: boolean = false;

  archive_cards: Card[] = [];

  constructor(public auth: AuthService, private http: HttpClient, private dialog: MatDialog) { }

  openDialog(type: any, card: Card) {
    // Removing 
    card.val.instructions = card.val.instructions.replace(/\.(?=[^\.]*\.)/g, '<br><br>');

    // 1 for instructions, 2 for description
    card.val.link = type;
    this.dialog.open(RecipeDialog2, {
      data: card.val,
    });
  }

  ngOnInit() {

    this.viewArchivedRecipes();


  }



  viewArchivedRecipes() {
    this.pending_your_recipes = true;

    this.auth.user$.subscribe((user: any) => {
      console.log("loading this week")
      this.a_user = user;
      this.archive_cards = [];
      this.http.get<any>(`http://localhost:8080/users/${this.a_user.email}/${gen_token(this.a_user.sub)}`).subscribe(data => {
        this.pending_your_recipes = false;


        for (const [key, value] of Object.entries(data.data.week_recipes)) {
          if (!check_expire(value['timestamp'])) {
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
              instructions: value['instructions'],
              val: value
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
@Component({
  selector: 'recipe-dialog2',
  templateUrl: 'recipe-dialog2.html',
})
export class RecipeDialog2 {
  constructor(@Inject(MAT_DIALOG_DATA) public data: any) {}
}