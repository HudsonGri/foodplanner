import { Component, HostListener } from '@angular/core';
import { AuthService } from '@auth0/auth0-angular';

@Component({
  selector: 'app-welcome',
  templateUrl: './welcome.component.html',
  styleUrls: ['./welcome.component.css']
})
export class WelcomeComponent {

  constructor(private auth: AuthService) {}

  loginWithRedirect(): void {
    this.auth.loginWithRedirect({
      appState: {
        target: '/home'
      }
    });
  }
}
