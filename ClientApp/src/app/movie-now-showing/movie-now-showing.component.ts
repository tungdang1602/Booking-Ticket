import { Component, OnInit } from '@angular/core';
import { MovieService } from '../service/movie.service';

@Component({
  selector: 'app-movie-now-showing',
  templateUrl: './movie-now-showing.component.html',
  styleUrls: ['./movie-now-showing.component.css']
})
export class MovieNowShowingComponent implements OnInit {

  listMovies : any;
  
  constructor(private movieService : MovieService) {
   
  }
  ngOnInit(): void {
    this.movieService.getMovieNowShowing().subscribe((data)=>{
      this.listMovies  = data;
      
      console.log(this.listMovies);
    });
    }

}
