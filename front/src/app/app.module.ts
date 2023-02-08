import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { MatSlideToggleModule } from '@angular/material/slide-toggle';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

import {FormsModule, ReactiveFormsModule} from '@angular/forms';
import {MatNativeDateModule} from '@angular/material/core';
import {HttpClientModule} from '@angular/common/http';
import {MatFormFieldModule} from '@angular/material/form-field';
import {MatSelectModule} from '@angular/material/select';

import { AuthModule } from '@auth0/auth0-angular';
import { AuthButtonComponent } from './auth0login.component';
import { UserProfileComponent } from './profileinfo.component';
import { NavComponent } from './nav/nav.component';
import { LayoutModule } from '@angular/cdk/layout';
import { MatToolbarModule } from '@angular/material/toolbar';
import { MatButtonModule } from '@angular/material/button';
import { MatSidenavModule } from '@angular/material/sidenav';
import { MatIconModule } from '@angular/material/icon';
import { MatListModule } from '@angular/material/list';
import { HomeComponent } from './home/home.component';
import { MatGridListModule } from '@angular/material/grid-list';
import { MatCardModule } from '@angular/material/card';
import { MatMenuModule } from '@angular/material/menu';
import { WelcomeComponent } from './welcome/welcome.component';

@NgModule({
  declarations: [
    AppComponent,
    AuthButtonComponent,
    UserProfileComponent,
    NavComponent,
    HomeComponent,
    WelcomeComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    MatSlideToggleModule,
    FormsModule,
    HttpClientModule,
    MatNativeDateModule,
    MatFormFieldModule,
    ReactiveFormsModule,
    MatSelectModule,

    AuthModule.forRoot({
      domain: 'dev-csui7aqqh8ypaqxq.us.auth0.com',
      clientId: '4leVKJQQEHt2v5VvoGFUtEOiR4MXsKKE',
      authorizationParams: {
        redirect_uri: window.location.origin
      }
    }),
     LayoutModule,
     MatToolbarModule,
     MatButtonModule,
     MatSidenavModule,
     MatIconModule,
     MatListModule,
     MatGridListModule,
     MatCardModule,
     MatMenuModule,
  ],
  providers: [],
  bootstrap: [AppComponent, AuthButtonComponent, UserProfileComponent]
})
export class AppModule { }
