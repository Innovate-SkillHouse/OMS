import { Component, EventEmitter, OnInit, Output } from "@angular/core";
import {
  FormBuilder,
  FormControl,
  FormGroup,
  Validators,
} from "@angular/forms";
import { ToastrService } from "ngx-toastr";
import { Subscription } from "rxjs";
import { first } from "rxjs/operators";
import { Router, ActivatedRoute } from "@angular/router";
import { AuthenticationService } from "src/app/core/services/authentication.service";
import { User } from "oidc-client";

@Component({
  selector: "app-change-password",
  templateUrl: "./change-password.component.html",
  styleUrls: ["./change-password.component.css"],
})
export class ChangePasswordComponent implements OnInit {
  constructor(
    private formBuilder: FormBuilder,
    private authenticationService: AuthenticationService,
    private route: ActivatedRoute,
    private router: Router,
    private toastr: ToastrService
  ) {}
  @Output() onCancel = new EventEmitter();

  isSubmitted = false;
  changePasswordForm: FormGroup;
  get oldPwd() {
    return this.changePasswordForm.get("oldPwd");
  }

  get newPwd() {
    return this.changePasswordForm.get("newPwd");
  }

  get confirmPwd() {
    return this.changePasswordForm.get("confirmPwd");
  }
  ngOnInit() {
    this.initialiseRegistrationForm();
  }

  initialiseRegistrationForm(): void {
    this.changePasswordForm = this.formBuilder.group({
      oldPwd: new FormControl("", [Validators.required]),
      newPwd: new FormControl("", [Validators.required]),
      confirmPwd: new FormControl("", [Validators.required]),
    });
  }

  onChangePassword() {
    this.isSubmitted = true;
    const currentUserId = this.authenticationService.currentUserValue.userId;
    if (this.changePasswordForm.valid) {
      let changePasswordModel = {
        currentPassword: this.oldPwd.value,
        newPassword: this.newPwd.value,
      };
      this.authenticationService
        .changePassword(changePasswordModel, currentUserId)
        .subscribe(
          (x) => {
            if (x) {
              this.onClose();
              this.router.navigate(["/logout"]);
            } else {
              this.oldPwd.setErrors({ oldPasswordMatch: true });
            }
          },
          (error) => {
            console.log(error);
          }
        );
    }
  }

  onClose(): void {
    this.onCancel.emit();
  }
}
