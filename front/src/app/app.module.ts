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

import { MaterialModule } from './material.module';
import { AuthModule } from '@auth0/auth0-angular';
import { AuthButtonComponent } from './auth0login.component';
import { UserProfileComponent } from './profileinfo.component';

@NgModule({
  declarations: [
    AppComponent,
    AuthButtonComponent,
    UserProfileComponent
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
    MaterialModule,

    AuthModule.forRoot({
      domain: 'dev-csui7aqqh8ypaqxq.us.auth0.com',
      clientId: '4leVKJQQEHt2v5VvoGFUtEOiR4MXsKKE',
      authorizationParams: {
        redirect_uri: window.location.origin
      }
    }),
  ],
  providers: [],
  bootstrap: [AppComponent, AuthButtonComponent, UserProfileComponent]
})
export class AppModule { }
