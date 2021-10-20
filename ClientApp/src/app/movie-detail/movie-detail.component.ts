import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Movies } from '../movie/movie.component';
import {CinemaComplexService} from '../service/cinema-complex.service';
import { MovieService } from '../service/movie.service';
@Component({
  selector: 'app-movie-detail',
  templateUrl: './movie-detail.component.html',
  styleUrls: ['./movie-detail.component.css']
})
export class MovieDetailComponent implements OnInit {
  movie : Movies;
  id: any;
  constructor(private route: ActivatedRoute, private movieService: MovieService) { 
    route.params.subscribe((params)=>{
      this.id = params.id;
    })
    this.movie = new Movies();
  }

  ngOnInit(): void {
    this.movieService.getMovie(this.id).subscribe((res : any)=>{
      this.movie = res;
      console.log(this.movie);
    }, err=>{
      console.log(err);
    })
  }
}
