import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { MovieService } from 'src/app/service/movie.service';
import { Movies } from '../manage-movie.component';

@Component({
  selector: 'app-manage-edit-movie',
  templateUrl: './manage-edit-movie.component.html',
  styleUrls: ['./manage-edit-movie.component.css']
})
export class ManageEditMovieComponent implements OnInit {
  movie! : Movies;
  movieId : any;
  editForm!: FormGroup;
  constructor( private routeActivated : ActivatedRoute, private movieService : MovieService, private fb: FormBuilder,private route : Router ) { 
    

    this.editForm = this.fb.group(
      {
      name: ["",Validators.required],
      directors: ["",Validators.required],
      casts: ["",Validators.required],
      summary: ["",Validators.required],
      premiereDate: ["",Validators.required],
      movieDuration: ["",Validators.required],
      poster: ["",Validators.required],
      trailer: ["",Validators.required],
    }
    );
  }

  async ngOnInit() {
    await this.routeActivated.params.subscribe((params)=>{
      this.movieId = params.id;
    });
    this.movieService.getMovie(this.movieId).subscribe((res : any)=>{
      this.movie = res;
      console.log(res);
      this.editForm.controls['name'].setValue(this.movie.name);
      this.editForm.controls['directors'].setValue(this.movie.directors);
      this.editForm.controls['casts'].setValue(this.movie.casts);
      this.editForm.controls['summary'].setValue(this.movie.summary);
      this.editForm.controls['premiereDate'].setValue(this.movie.premiereDate);
      this.editForm.controls['movieDuration'].setValue(this.movie.movieDuration);
      this.editForm.controls['poster'].setValue(this.movie.poster);
      this.editForm.controls['trailer'].setValue(this.movie.trailer);
    }, err=> console.error(err));
  }
  submitForm(data :any){
    data.movieId = this.movie.movieId;
    this.movieService.updateMovie(data).subscribe(res=> {
      alert("Cap nhat thanh cong");
      this.route.navigate(['manager']);
    },err=>{
      alert("Loi");
      console.log(err);
    })
  }
}
