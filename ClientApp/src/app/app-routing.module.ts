import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { MovieNowShowingComponent } from './movie-now-showing/movie-now-showing.component';
import { MovieComingSoonComponent } from './movie-coming-soon/movie-coming-soon.component';
import { MovieDetailComponent } from './movie-detail/movie-detail.component';
import { CinemaComplexComponent } from './cinema-complex/cinema-complex.component';


import { MovieComponent } from './movie/movie.component';

const routes: Routes = [
  { path: 'home', component: HomeComponent },
  {
    path: '', component: HomeComponent, children: [
      { path: '', component: MovieComponent },
      { path: 'now-showing', component: MovieNowShowingComponent },
      { path: 'coming-soon', component: MovieComingSoonComponent },
      { path: 'movie-detail/:id', component: MovieDetailComponent },
      { path: 'cinema-complex', component: CinemaComplexComponent },

    ]
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
