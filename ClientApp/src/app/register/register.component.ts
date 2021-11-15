import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormControl, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { AuthService } from '../service/auth.service';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.css']
})
export class RegisterComponent implements OnInit {
  registerForm!: FormGroup;
  IsAllDone!: boolean;
  errorList: any;
  today!: number;
  constructor(private fb: FormBuilder, private authService: AuthService, private route: Router) { }

  ngOnInit() {
    this.registerForm = this.fb.group({
      name : ["", Validators.required],
      email : ["", Validators.required],
      dob : ["", Validators.required],
      phone : ["", Validators.required],
      password : ["", Validators.required],
      confirmpassword: [
        null,
        [Validators.required, this.confirmPasswordValidation],
      ],
    }
    );
    this.errorList =[];
    this.today = Date.now();
  }

  submitForm(Formdata : any){
    if(this.registerForm.valid){
      this.errorList=[];
      this.authService.Register(Formdata).subscribe((res)=>{
        this.IsAllDone = true;
        alert("Đăng ký thành công");
        this.route.navigate(['login']);
      },
      (err)=>{
        console.log(err);
        this.IsAllDone = false;
        if(err.status == 400){
          if (err.error.errors == undefined) this.errorList = err.error;
          else this.errorList = err.error.errors;
        }
      })
    }
  }

  confirmPasswordValidation = (control: FormControl): { [s: string]: boolean } | null =>{
    if (control.value !== null && control.value !== this.registerForm.controls["password"].value){
      return{notMatchPassword : true};
    }
    return null;
  }
}
