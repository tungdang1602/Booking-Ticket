import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';


@Injectable({
  providedIn: 'root'
})
export class CinemaComplexService {

  
  constructor(private http : HttpClient) { 
  }

  public getAllCinemaComplex(){
    return this.http.get(environment.apiUrl + "cinemacomplex/", {
      headers: new HttpHeaders({ "Content-Type": "application/json" })
    });
  }
  public getCinemaComplex(id : number){
    return this.http.get(environment.apiUrl + "cinemacomplex/" + id,
    {
      headers: new HttpHeaders({ "Content-Type": "application/json"})
    });
  }
}
