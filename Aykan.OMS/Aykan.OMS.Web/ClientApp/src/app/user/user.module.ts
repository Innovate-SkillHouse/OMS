import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { LoginComponent } from '../login/login.component';
import { LoginRoutingModule } from '../login/login-routing.module';
import { SharedModule } from '../shared/shared.module';
import { UserComponent } from './user.component';
import { UserRoutingModule } from './user-routing.module';



@NgModule({
  declarations: [UserComponent],
  imports: [
    UserRoutingModule, SharedModule
  ]
})
export class UserModules { }
