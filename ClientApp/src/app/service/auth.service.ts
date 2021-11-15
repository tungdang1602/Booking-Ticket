import { Injectable } from '@angular/core';
import { JwtHelperService } from '@auth0/angular-jwt';
import { ActivatedRouteSnapshot, CanActivate, Router, RouterStateSnapshot, UrlTree } from '@angular/router';
import { Observable, Subject } from 'rxjs';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { environment } from 'src/environments/environment';
import { map } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class AuthService implements CanActivate {
  jwtHelper = new JwtHelperService;
  currentUser = new Subject<string>();
constructor(private http: HttpClient, private router : Router) { }

  Register(user : any){
    return this.http.post(environment.apiUrl + "auth/register",JSON.stringify(user),{
      headers : new HttpHeaders({"Content-Type": "application/json"}),
    });
  }

  getAllUsers(){
    return this.http.get(environment.apiUrl + "auth",{
      headers : new HttpHeaders({"Content-Type": "application/json"})
    });
  }

  getUser(id : any){
    return this.http.get(environment.apiUrl + "auth/" + id,{
      headers : new HttpHeaders({"Content-Type": "application/json"})
    })
  }
  Login(loginData : any){
    return this.http.post(environment.apiUrl + "auth/login",JSON.stringify(loginData),{
      headers : new HttpHeaders({"Content-Type": "application/json"})
    })
    .pipe(
      map((res: any) => {
        console.log(res);
        localStorage.setItem('token', res.token);
        localStorage.setItem('currentUser', JSON.stringify(res.user));
        localStorage.setItem('refreshToken', res.refreshToken);
        this.currentUser.next(res.user);
      })
      )
  }

  Logout(){
    localStorage.removeItem('token');
    localStorage.removeItem('refreshToken');
    localStorage.removeItem('currentUser');
  }
  isAuthenticated(): boolean {
    const token : any = localStorage.getItem('token');
    return !this.jwtHelper.isTokenExpired(token);
  }
  canActivate(): boolean {
    const token = localStorage.getItem('token');
    if (token && this.jwtHelper.isTokenExpired(token)){
      return true;
    }
    this.router.navigate(['login']);
    return false;
  }

}
