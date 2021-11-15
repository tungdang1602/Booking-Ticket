import { Component, OnInit } from '@angular/core';
import { AuthService } from 'src/app/service/auth.service';

@Component({
  selector: 'app-manage-user',
  templateUrl: './manage-user.component.html',
  styleUrls: ['./manage-user.component.css']
})
export class ManageUserComponent implements OnInit {
listUsers: any;
userId : any;
  constructor(private authService: AuthService) { }

  ngOnInit(): void {  
    this.authService.getAllUsers().subscribe((data)=>{
      this.listUsers = data;
      console.log(this.listUsers);
    });
  
  }

}
