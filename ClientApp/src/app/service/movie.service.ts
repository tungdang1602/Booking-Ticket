import { Injectable } from '@angular/core';
import { HttpClient,HttpHeaders, HttpParams } from '@angular/common/http';
import { environment } from 'src/environments/environment';


@Injectable({
  providedIn: 'root'
})
export class MovieService {
  

  constructor(private http: HttpClient) { }

  getAllMovies(pageIndex : number, pageSize : number, keyWord : string){
    const params = new HttpParams()
    .set('pageIndex', pageIndex)
    .set('pageSize', pageSize)
    .set('keyWord', keyWord);

    console.log(params);
    return this.http
      .get<any>(environment.apiUrl + "movie", {
      headers : new HttpHeaders({"Content-Type": "application/json"}),
      params : params
    });
  }
  getMovie(id : any){
    return this.http.get(environment.apiUrl + "movie/" + id, {
      headers : new HttpHeaders({"Content-Type": "application/json"}),
    });
  }
  public getMovieComingSoon(){
    return this.http.get<any>(environment.apiUrl + "Movie/movie/comingsoon" , {
      headers : new HttpHeaders({"Content-Type": "application/json"}),
    });
  }
 
  }
  




