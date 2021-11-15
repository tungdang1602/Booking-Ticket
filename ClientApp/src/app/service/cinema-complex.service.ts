import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';


@Injectable({
  providedIn: 'root'
})
export class CinemaComplexService {


  constructor(private http: HttpClient) {
  }

  public getAllCinemaComplex() {
    return this.http.get(environment.apiUrl + "cinemacomplex/", {
      headers: new HttpHeaders({ "Content-Type": "application/json" })
    });
  }
  public getCinemaComplex(id: number) {
    return this.http.get(environment.apiUrl + "cinemacomplex/" + id,
      {
        headers: new HttpHeaders({ "Content-Type": "application/json" })
      });
  }
  getCinema(id: number) {
    return this.http.get(environment.apiUrl + "cinema/" + id, {
      headers: new HttpHeaders({ "Content-Type": "application/json" })
    });
  }
  getCinemaInComplex(id: number) {
    return this.http.get(environment.apiUrl + "Cinema/(CinemaComplex)/" + id, {
      headers: new HttpHeaders({ "Content-Type": "application/json" })
    });
  }
  updateCinema(cinemaData: any) {
    return this.http.put(environment.apiUrl + "cinema", JSON.stringify(cinemaData), {
      headers: new HttpHeaders({ "Content-Type": "application/json" }),

    });
  }
  deleteCinema(id: any) {
    return this.http.delete(environment.apiUrl + "cinema/" + id, {
      headers: new HttpHeaders({ "Content-Type": "application/json" }),
    });
  }
}
