import { LOCALE_ID, NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule, HTTP_INTERCEPTORS } from '@angular/common/http';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import localeVN from "@angular/common/locales/vi";

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { TopBarComponent } from './top-bar/top-bar.component';

import { LogoAreaComponent } from './logo-area/logo-area.component';
import { MenuAreaComponent } from './menu-area/menu-area.component';
import { HomeComponent } from './home/home.component';
import { MovieComponent } from './movie/movie.component';
import { FooterComponent } from './footer/footer.component';
import { MovieNowShowingComponent } from './movie-now-showing/movie-now-showing.component';
import { MovieComingSoonComponent } from './movie-coming-soon/movie-coming-soon.component';
import { MovieBannerComponent } from './movie-banner/movie-banner.component';
import { MovieDetailComponent } from './movie-detail/movie-detail.component';
import { CinemaComplexComponent } from './cinema-complex/cinema-complex.component';
import { SidebarComponent } from './manage/sidebar/sidebar.component';
import { ManageMovieComponent } from './manage/manage-movie/manage-movie.component';
import { ManageAddMovieComponent } from './manage/manage-movie/manage-add-movie/manage-add-movie.component';
import { ManageEditMovieComponent } from './manage/manage-movie/manage-edit-movie/manage-edit-movie.component';

import { EditCinemaComponent } from './manage/cinema/edit-cinema/edit-cinema.component';
import {CinemaComponent} from './manage/cinema/cinema.component';
import { ManageUserComponent } from './manage/manage-user/manage-user.component';
import { ManageComponent } from './manage/manage.component';
import { EditUserComponent } from './manage/manage-user/edit-user/edit-user.component';
import { LoginComponent } from './login/login.component';
import { RegisterComponent } from './register/register.component';
import { registerLocaleData } from '@angular/common';

@NgModule({
  declarations: [		
    AppComponent,
    TopBarComponent,

    LogoAreaComponent,
    MenuAreaComponent,
    HomeComponent,
    MovieComponent,
    FooterComponent,
    MovieNowShowingComponent,
    MovieComingSoonComponent,
    MovieBannerComponent,
    MovieDetailComponent,
    CinemaComplexComponent,
    SidebarComponent,
    ManageComponent,
    ManageMovieComponent,
    EditCinemaComponent,
    ManageAddMovieComponent,
    ManageEditMovieComponent,
    CinemaComponent,
    ManageUserComponent,
    EditUserComponent,
      LoginComponent,
      RegisterComponent
   ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    ReactiveFormsModule,
    FormsModule,
  ],
  providers: [
    { provide: LOCALE_ID, useValue: 'vi' }
],
   

  bootstrap: [AppComponent]
})
export class AppModule { }
registerLocaleData(localeVN, "vi");