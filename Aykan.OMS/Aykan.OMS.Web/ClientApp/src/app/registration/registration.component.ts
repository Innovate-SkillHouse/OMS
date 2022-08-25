import { Component, OnInit } from "@angular/core";
import {
  FormBuilder,
  FormControl,
  FormGroup,
  Validators,
} from "@angular/forms";
import { ToastrService } from "ngx-toastr";
import { Subscription } from "rxjs";
import { AuthenticationService } from "../core/services/authentication.service";
import { first } from "rxjs/operators";
import { Router, ActivatedRoute } from "@angular/router";
import { RegistrationModel } from "./models/registration.model";

@Component({
  selector: "app-registration",
  templateUrl: "./registration.component.html",
  styleUrls: ["./registration.component.css"],
})
export class RegistrationComponent implements OnInit {
  constructor(
    private formBuilder: FormBuilder,
    private authenticationService: AuthenticationService,
    private route: ActivatedRoute,
    private router: Router,
    private toastr: ToastrService
  ) {
    if (this.authenticationService.currentUserValue) {
      this.router.navigate(["/"]);
    }
  }
  registrationForm: FormGroup;
  ngOnInit() {
    this.initialiseRegistrationForm();
  }

  initialiseRegistrationForm(): void {
    this.registrationForm = this.formBuilder.group({
      name: new FormControl("", Validators.required),
      email: new FormControl(""),
      mobileNumber: new FormControl(""),
      address: new FormControl(""),
      userName: new FormControl("", Validators.required),
      password: new FormControl("", Validators.required),
      registerType: new FormControl("", Validators.required),
    });
  }

  onSubmitRegistration() {
    if (this.registrationForm.valid) {
      let currentRegistration = <RegistrationModel>{
        name: this.registrationForm.get("name").value,
        email: this.registrationForm.get("email").value,
        mobileNumber: this.registrationForm.get("mobileNumber").value,
        address: this.registrationForm.get("address").value,
        userName: this.registrationForm.get("userName").value,
        password: this.registrationForm.get("password").value,
        registerType: parseInt(this.registrationForm.get("registerType").value),
      };
      this.authenticationService.register(currentRegistration).subscribe(
        (result) => {
          this.toastr.success("User Registered Successfully!", "Success!");
          if (result) {
            this.router.navigate(["/login"]);
          }
        },
        (error) => console.log(error)
      );
    }
  }
}
