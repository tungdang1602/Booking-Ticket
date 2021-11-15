import { Component, OnInit } from '@angular/core';
import { CinemaComplexService } from 'src/app/service/cinema-complex.service';

@Component({
  selector: 'app-sidebar',
  templateUrl: './sidebar.component.html',
  styleUrls: ['./sidebar.component.css']
})
export class SidebarComponent implements OnInit {

  cinemaComplies :any;

  constructor( private cinemaComplexService : CinemaComplexService) { }

  ngOnInit() : void{
    this.cinemaComplexService.getAllCinemaComplex().subscribe((data) =>{
      this.cinemaComplies = data;
      console.log(this.cinemaComplies);
    })
  }
}
