import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { AuthService } from '../service/auth.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  loginForm!: FormGroup;
  errorList: any;
  IsAllDone!: boolean;
  constructor(private fb: FormBuilder, private authService: AuthService, private route: Router) {
    if (localStorage.getItem('currentUser') !== null && localStorage.getItem('token') !== null) {
      route.navigate(['/']);
    }
  }

  ngOnInit() {
    this.loginForm = this.fb.group({
      email: ["", Validators.required],
      password: ["", Validators.required]
    });
    this.errorList = [];
  }
  submitForm(loginData: any) {
    if (this.loginForm.valid) {
      this.errorList = [];
      this.authService.Login(loginData).subscribe(
        (res) => {
          this.IsAllDone = true;
          alert("Đăng Nhập Thành Công");
          this.route.navigate(['/']);

        }, (err) => {
          console.log(err);
          this.IsAllDone = false;
          if (err.status == 400) {
            if (err.error.errors == undefined) this.errorList = err.error;
            else this.errorList = err.error.errors;
          }
        })
    }
  }
}
