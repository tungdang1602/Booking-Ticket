import { Component, OnInit } from '@angular/core';
import { MovieService } from '../service/movie.service';


@Component({
  selector: 'app-movie',
  templateUrl: './movie.component.html',
  styleUrls: ['./movie.component.css']
})
export class MovieComponent implements OnInit {
  listMovies : any;
  
  constructor(private movieService : MovieService) {
   
  }
  ngOnInit(): void {
    this.movieService.getMovieComingSoon().subscribe((data)=>{
      this.listMovies  = data;
      
      console.log(this.listMovies);
    });
    }
}
export class Movies {
  movieId: number | undefined;
  name! : string;
  directors! : string;
  casts! : string;
  summary! : string;
  premiereDate! : Date;
  poster! : string;
  trailer! : string;
  movieDuration! :number;
}