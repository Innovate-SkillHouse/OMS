import { Component } from '@angular/core';
import { AuthenticationService } from './core/services/authentication.service';
import { LoginModel } from './login/models/login.model';


@Component({
  selector: 'app-root',
  templateUrl: './app.component.html'
})
export class AppComponent {
  title = 'app';
  currentUser: LoginModel;
  constructor(
    private authenticationService: AuthenticationService,
  ) {
    this.authenticationService.currentUser.subscribe(
      (x) => (this.currentUser = x)
    );
  }
}
