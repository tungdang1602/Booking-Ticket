import { Component, OnInit } from '@angular/core';
import { MovieService } from 'src/app/service/movie.service';

@Component({
  selector: 'app-manage-movie',
  templateUrl: './manage-movie.component.html',
  styleUrls: ['./manage-movie.component.css']
})
export class ManageMovieComponent implements OnInit {
  listMovies : any;
  movieId : any;
  constructor(private movieService: MovieService) { }

  ngOnInit(): void {
    this.movieService.getAllMovies(1,13,"").subscribe((data) =>{
      this.listMovies= data;
      console.log(this.listMovies);
    });
  
  }
  deleteMovie(movieId : any){
    this.movieService.deleteMovie(movieId).subscribe((data) =>{
      alert("Xoa thanh cong");
      this.reloadPage();
    })
  }
  reloadPage(): void {
    window.location.reload();
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