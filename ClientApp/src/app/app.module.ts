import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

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
import { HttpClientModule, HTTP_INTERCEPTORS } from '@angular/common/http';

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
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule
  ],
  providers: [
  
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
