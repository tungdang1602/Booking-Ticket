import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { CinemaComplexService } from 'src/app/service/cinema-complex.service';

@Component({
  selector: 'app-edit-cinema',
  templateUrl: './edit-cinema.component.html',
  styleUrls: ['./edit-cinema.component.css']
})
export class EditCinemaComponent implements OnInit {
  cinema :any;
  cinemaId : any;
  editForm : FormGroup;
  constructor(private routeActivated : ActivatedRoute, private cinemaComplexService : CinemaComplexService,private fb :FormBuilder, private route : Router) {
    this.editForm = this.fb.group({
      name : ["",Validators.required],
      type : ["",Validators.required],
      totalSeats : ["",Validators.required],
    })
  }

  async ngOnInit() {
    await this.routeActivated.params.subscribe((params)=>{
      this.cinemaId = params.id;
    });

    this.cinemaComplexService.getCinema(this.cinemaId).subscribe((res : any)=>{
      this.cinema = res;
      console.log(res);

      this.editForm.controls['name'].setValue(this.cinema.name);
      this.editForm.controls['type'].setValue(this.cinema.type);
      this.editForm.controls['totalSeats'].setValue(this.cinema.totalSeats);
    }, err=> console.error(err))
  }
  submitForm(data : any) {
    data.cinemaId = this.cinema.cinemaId;
    data.cinemaComplexId = this.cinema.cinemaComplexId;
    data.cinemaSeatId = this.cinema.cinemaSeatId;
    this.cinemaComplexService.updateCinema(data).subscribe(res=>{
      alert("Cap nhat thanh cong");
      this.route.navigate(['manager']);
    },err=>{
      alert("Loi");
      console.log(err);
    })
  }

}
