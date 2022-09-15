import { Component, OnInit } from '@angular/core';
import { UserService } from './user.service';



@Component({
  selector: 'app-user',
  templateUrl: './user.component.html',
  styleUrls: ['./user.component.css']
})
export class UserComponent implements OnInit {
  userData=[];

  constructor(private userService:UserService) { }

  ngOnInit(): void {
    this.userService.GetAllUser().subscribe(result=>{
      debugger
       this.userData=result;
    })
  }

}

