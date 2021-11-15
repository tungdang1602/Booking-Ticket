import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { CinemaComplexService } from 'src/app/service/cinema-complex.service';

@Component({
  selector: 'app-cinema',
  templateUrl: './cinema.component.html',
  styleUrls: ['./cinema.component.css']
})
export class CinemaComponent implements OnInit {
  cinemaComplies :any;
  cinemaInComplex : any;
  cinema : any;
  id : any;
  constructor( private route: ActivatedRoute, private cinemaComplexService: CinemaComplexService) { }

  ngOnInit() : void{
    this.route.params.subscribe((params)=>{
      this.id = params.id;
    });

    this.cinemaComplexService.getAllCinemaComplex().subscribe((data) =>{
      this.cinemaComplies = data;
      console.log(this.cinemaComplies);
    });

    this.cinemaComplexService.getCinemaComplex(this.id).subscribe((res : any)=> {
      this.cinema = res;
      console.log(this.cinema);
    }, err => {
      console.error(err);
    });

    this.cinemaComplexService.getCinemaInComplex(this.id).subscribe((data) =>{
      this.cinemaInComplex =data;
      console.log(this.cinemaInComplex);
    })
  }
  deleteCinema(id : any){
    this.cinemaComplexService.deleteCinema(id).subscribe((data) =>{
      alert("Xoa thanh cong");
      this.reloadPage();
    })
  }
  reloadPage(): void {
    window.location.reload();
  }

}
