import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { WelcomeComponent } from './welcome/welcome.component';
import { LoginComponent } from './login/login.component';
import { PreferencesComponent } from './preferences/preferences.component';

const routes: Routes = [
  { path: '', component: HomeComponent},
  { path: 'welcome', component: WelcomeComponent},
  { path: 'login', component: LoginComponent},
  { path: 'preferences', component: PreferencesComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
