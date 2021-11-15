import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { CinemaComplexService } from '../service/cinema-complex.service';
import {CinemaComplices} from '../models/cinemaComplex';

@Component({
  selector: 'app-cinema-complex',
  templateUrl: './cinema-complex.component.html',
  styleUrls: ['./cinema-complex.component.css']
})
export class CinemaComplexComponent implements OnInit {
  cinema : any ;
  id: any;
  constructor(private route: ActivatedRoute, private cinemaComplexService: CinemaComplexService) { 

  }

  ngOnInit(): void {
    this.route.params.subscribe((params)=>{
      this.id = params.id;
    })
    this.cinemaComplexService.getCinemaComplex(this.id).subscribe((res : any)=>{
      this.cinema = res;
      console.log(this.cinema);
    }, err=>{
      console.log(err);
    })
  }

}
