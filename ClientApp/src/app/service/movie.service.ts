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
  getMovieComingSoon(){
    return this.http.get<any>(environment.apiUrl + "Movie/movie/comingsoon" , {
      headers : new HttpHeaders({"Content-Type": "application/json"}),
    });
  }
  getMovieNowShowing(){
    return this.http.get<any>(environment.apiUrl + "Movie/movie/nowshowing" , {
      headers : new HttpHeaders({"Content-Type": "application/json"}),
    });
  }
  addNewMovie(movieData : any){
    return this.http.post(environment.apiUrl + "movie", JSON.stringify(movieData),{
      headers : new HttpHeaders({"Content-Type": "application/json"}),
    });
  }
  deleteMovie(id : any){
    return this.http.delete(environment.apiUrl + "movie/"+id ,{
      headers : new HttpHeaders({"Content-Type": "application/json"}),
    });
  }
  updateMovie(movieData : any){
    return this.http.put(environment.apiUrl + "movie", JSON.stringify(movieData),{
      headers : new HttpHeaders({"Content-Type": "application/json"}),
    });
  }
  

 
  }
  




