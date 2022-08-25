import { Component, OnInit } from "@angular/core";
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
import { AuthenticationService } from "../core/services/authentication.service";
import { AddEditShopModel } from "./models/add-shop.model";
import { ShopService } from "../shop/services/shop.service";

@Component({
  selector: "app-add-shop",
  templateUrl: "./add-shop.component.html",
  styleUrls: ["./add-shop.component.css"],
})
export class AddShopComponent implements OnInit {
  userId: number = 0;
  constructor(
    private formBuilder: FormBuilder,
    private route: ActivatedRoute,
    private authenticationService: AuthenticationService,
    private router: Router,
    private toastr: ToastrService,
    private shopService:ShopService
  ) {
    const currentUser = this.authenticationService.currentUserValue;
    this.userId = currentUser.userId;
  }
  addShopForm: FormGroup;
  ngOnInit() {
    this.initialiseAddShopForm();
  }
  initialiseAddShopForm(): void {
    this.addShopForm = this.formBuilder.group({
      name: new FormControl("", Validators.required),
      address: new FormControl("", Validators.required),
    });
  }

  onSubmitShop() {
    if (this.addShopForm.valid) {
      let addShop = <AddEditShopModel>{
        name: this.addShopForm.get("name").value,
        address: this.addShopForm.get("address").value,
        createdBy: this.userId,
      };
      this.shopService.addShop(addShop).subscribe(
        (result) => {
          this.toastr.success("Shop Added Successfully!", "Success!");
          if (result) {
            this.router.navigate(["/dashboard"]);
          }
        },
        (error) => console.log(error)
      );
    }
  }
}
