import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { WelcomeComponent } from './welcome/welcome.component';
import { SearchComponent } from './search/search.component';
import { PreferencesComponent } from './preferences/preferences.component';
import { WeeklyRecipesComponent } from './weekly-recipes/weekly-recipes.component';
import { ArchiveComponent } from './archive/archive.component';
import { ResultComponent } from './search/result/result.component';


const routes: Routes = [
  { path: '', redirectTo: '/home', pathMatch: 'full' },
  { path: 'home', component: HomeComponent},
  { path: 'welcome', component: WelcomeComponent},
  { path: 'search', component: SearchComponent},
  { path: 'preferences', component: PreferencesComponent},
  { path: 'weekly-recipes', component: WeeklyRecipesComponent},
  { path: 'archive', component: ArchiveComponent},
  { path: 'cuisine/:cuisineType', component: ResultComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
