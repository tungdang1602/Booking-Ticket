import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormControl, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { MovieService } from 'src/app/service/movie.service';

@Component({
  selector: 'app-manage-add-movie',
  templateUrl: './manage-add-movie.component.html',
  styleUrls: ['./manage-add-movie.component.css']
})
export class ManageAddMovieComponent implements OnInit {
  addForm!: FormGroup;

  constructor(private movieService: MovieService, private fb: FormBuilder, private route: Router) { }

  ngOnInit() {
    this.addForm = this.fb.group(
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
  submitForm(data: any) {
    this.movieService.addNewMovie(data).subscribe(res => {
      alert("Them thanh cong");
      this.route.navigate(['manager']);
    }, err => {
      alert("Loi");
      console.log(err);
    });
  }

}
