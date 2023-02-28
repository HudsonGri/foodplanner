import { Component } from '@angular/core';
import { AuthService, User } from '@auth0/auth0-angular';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-user-profile',
  template: `
    <ul *ngIf="auth.user$ | async as user">
      <li>{{ user.name }}</li>
      <li>{{ user.email }}</li>
    </ul>`
})
export class UserProfileComponent {
  email: any;
  constructor(private http: HttpClient, public auth: AuthService) {
    this.email = auth.user$.subscribe(console.log)
  }
  ngOnInit() {
    console.log(this.email.email); // Output: ''
  }
}