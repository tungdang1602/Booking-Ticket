import { Component, OnInit } from '@angular/core';
import { CinemaComplexService } from '../service/cinema-complex.service';

@Component({
  selector: 'app-menu-area',
  templateUrl: './menu-area.component.html',
  styleUrls: ['./menu-area.component.css']
})
export class MenuAreaComponent implements OnInit {
  cinemaComplies : any;
  constructor(private cinemaComplexService : CinemaComplexService) { }

  ngOnInit(): void {
    this.cinemaComplexService.getAllCinemaComplex().subscribe((data)=>{
      this.cinemaComplies = data;
      console.log(this.cinemaComplies);
    });
  }

}
