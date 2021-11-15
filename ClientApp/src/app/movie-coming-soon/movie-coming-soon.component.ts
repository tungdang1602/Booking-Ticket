import { Component, OnInit } from '@angular/core';
import { MovieService } from '../service/movie.service';

@Component({
  selector: 'app-movie-coming-soon',
  templateUrl: './movie-coming-soon.component.html',
  styleUrls: ['./movie-coming-soon.component.css']
})
export class MovieComingSoonComponent implements OnInit {

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
