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
import { CardComponent } from './home/card/card.component';
import { SearchComponent } from './search/search.component';
import { PreferencesComponent } from './preferences/preferences.component';
import { WeeklyRecipesComponent } from './weekly-recipes/weekly-recipes.component';
import {MatExpansionModule} from '@angular/material/expansion';
import {MatProgressSpinnerModule, ProgressSpinnerMode} from '@angular/material/progress-spinner';
import { PdfbuttonComponent } from './home/pdfbutton/pdfbutton.component';
import { BackendUserRequestComponent } from './backend-user-request/backend-user-request.component';
import { ArchiveComponent } from './archive/archive.component';

@NgModule({
  declarations: [
    AppComponent,
    AuthButtonComponent,
    UserProfileComponent,
    NavComponent,
    HomeComponent,
    WelcomeComponent,
    CardComponent,
    SearchComponent,
    PreferencesComponent,
    WeeklyRecipesComponent,
    PdfbuttonComponent,
    BackendUserRequestComponent,
    ArchiveComponent
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
      domain: 'dev-f3612agfl2judti1.us.auth0.com',
      clientId: 'w92cz5xnF7lqxOjblbduKFIWuiDpwgBq',
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
     MatExpansionModule,
     MatProgressSpinnerModule,
  ],
  providers: [],
  bootstrap: [AppComponent, AuthButtonComponent, UserProfileComponent]
})
export class AppModule { }
