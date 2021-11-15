import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { MovieNowShowingComponent } from './movie-now-showing/movie-now-showing.component';
import { MovieComingSoonComponent } from './movie-coming-soon/movie-coming-soon.component';
import { MovieDetailComponent } from './movie-detail/movie-detail.component';
import { CinemaComplexComponent } from './cinema-complex/cinema-complex.component';


import { MovieComponent } from './movie/movie.component';

import { ManageComponent } from './manage/manage.component';
import { ManageMovieComponent } from './manage/manage-movie/manage-movie.component';
import { ManageAddMovieComponent } from './manage/manage-movie/manage-add-movie/manage-add-movie.component';
import { ManageEditMovieComponent } from './manage/manage-movie/manage-edit-movie/manage-edit-movie.component';

import { EditCinemaComponent } from './manage/cinema/edit-cinema/edit-cinema.component';
import { CinemaComponent } from './manage/cinema/cinema.component';
import { ManageUserComponent } from './manage/manage-user/manage-user.component';
import { EditUserComponent } from './manage/manage-user/edit-user/edit-user.component';
import { LoginComponent } from './login/login.component';
import { RegisterComponent } from './register/register.component';
import { RoleService } from './service/role.service';
import { registerLocaleData } from '@angular/common';


const routes: Routes = [
  { path: 'login', component: LoginComponent },
  { path: 'register', component: RegisterComponent },
  { path: 'home', component: HomeComponent },
  {
    path: '', component: HomeComponent, children: [
      { path: '', component: MovieComponent },
      { path: 'now-showing', component: MovieNowShowingComponent },
      { path: 'coming-soon', component: MovieComingSoonComponent },
      { path: 'movie-detail/:id', component: MovieDetailComponent },
      { path: 'cinema-complex/:id', component: CinemaComplexComponent },
    ],

  },
  {
    path: 'manage', component: ManageComponent, canActivate: [RoleService],
    data: {
      expectedRole: 'Admin'
    }
  },
  {
    path: '', component: ManageComponent, children: [

      {
        path: 'manager', component: ManageMovieComponent
        , canActivate: [RoleService],
        data: {
          expectedRole: 'Admin'
        },
      },
      {
        path: 'manager/add-movie', component: ManageAddMovieComponent
        , canActivate: [RoleService],
        data: {
          expectedRole: 'Admin'
        },
      },
      {
        path: 'manager/edit-movie/:id', component: ManageEditMovieComponent
        , canActivate: [RoleService],
        data: {
          expectedRole: 'Admin'
        }
      },

      {
        path: 'manager/cinema/:id', component: CinemaComponent
        , canActivate: [RoleService],
        data: {
          expectedRole: 'Admin'
        },
      },
      {
        path: 'manager/cinema/edit/:id', component: EditCinemaComponent,
        canActivate: [RoleService],
        data: {
          expectedRole: 'Admin'
        },
      },
      {
        path: 'manager/user', component: ManageUserComponent,
        canActivate: [RoleService],
        data: {
          expectedRole: 'Admin'
        },
      },
      {
        path: 'manager/user/edit', component: EditUserComponent,
        canActivate: [RoleService],
        data: {
          expectedRole: 'Admin'
        },
      },
    ]
  },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
