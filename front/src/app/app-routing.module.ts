import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { WelcomeComponent } from './welcome/welcome.component';
import { SearchComponent } from './search/search.component';
import { PreferencesComponent } from './preferences/preferences.component';
import { WeeklyRecipesComponent } from './weekly-recipes/weekly-recipes.component';


const routes: Routes = [
  { path: '', redirectTo: '/welcome', pathMatch: 'full' },
  { path: 'home', component: HomeComponent},
  { path: 'welcome', component: WelcomeComponent},
  { path: 'search', component: SearchComponent},
  { path: 'preferences', component: PreferencesComponent},
  {path: 'weekly-recipes', component: WeeklyRecipesComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
