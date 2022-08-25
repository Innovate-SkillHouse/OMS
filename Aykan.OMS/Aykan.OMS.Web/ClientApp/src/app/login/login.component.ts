import { Component, OnInit } from "@angular/core";
import { FormBuilder, FormGroup, Validators } from "@angular/forms";
import { Subscription } from "rxjs";
import { AuthenticationService } from "../core/services/authentication.service";
import { first } from "rxjs/operators";
import { Router, ActivatedRoute } from "@angular/router";
@Component({
  selector: "app-login",
  templateUrl: "./login.component.html",
  styleUrls: ["./login.component.css"],
})
export class LoginComponent implements OnInit {
  constructor(
    private formBuilder: FormBuilder,
    private authenticationService: AuthenticationService,
    private route: ActivatedRoute,
    private router: Router
  ) {
    if (this.authenticationService.currentUserValue) {
      this.router.navigate(["/"]);
    }
  }
  loginForm: FormGroup;
  subscriptions: Subscription[] = [];
  loading = false;
  submitted = false;
  returnUrl: string;
  error = "";
  subscriptionOnLogin$: Subscription;
  isPasswordShow = false;
  loggedIn: boolean;
  ngOnInit() {
    this.loginForm = this.formBuilder.group({
      username: ["", Validators.required],
      password: ["", Validators.required],
    });
    this.returnUrl =
      this.route.snapshot.queryParams["returnUrl"] || "dashboard";
  }

  // convenience getter for easy access to form fields
  get f() {
    return this.loginForm.controls;
  }

  onSubmit() {
    this.submitted = true;

    // stop here if form is invalid
    if (this.loginForm.invalid) {
      return;
    }

    this.loading = true;
    this.subscriptionOnLogin$ = this.authenticationService
      .login(this.f.username.value, this.f.password.value)
      .pipe(first())
      .subscribe(
        (data) => {
          this.loggedIn = true;
          this.authenticationService.setUserContext(data);
          let tokenData = JSON.parse(atob(data.token.split(".")[1]));
          this.router.navigateByUrl(this.returnUrl);
        },
        (error) => {
          this.error = error;
          this.loading = false;
          this.submitted = false;
          this.loginForm.reset();
        }
      );
    this.subscriptions.push(this.subscriptionOnLogin$);
  }

  ngOnDestroy() {
    this.subscriptions.forEach((subscription) => subscription.unsubscribe());
  }
}
