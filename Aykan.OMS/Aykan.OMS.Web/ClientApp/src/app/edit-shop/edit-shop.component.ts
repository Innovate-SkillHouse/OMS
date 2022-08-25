import { Component, OnInit } from "@angular/core";
import {
  FormBuilder,
  FormControl,
  FormGroup,
  Validators,
} from "@angular/forms";
import { ToastrService } from "ngx-toastr";
import { AddEditShopModel } from "../add-shop/models/add-shop.model";
import { ShopModel } from "../shop/models/shop.model";
import { ShopService } from "../shop/services/shop.service";
import { ActivatedRoute, Router } from "@angular/router";

@Component({
  selector: "app-edit-shop",
  templateUrl: "./edit-shop.component.html",
  styleUrls: ["./edit-shop.component.css"],
})
export class EditShopComponent implements OnInit {
  shop: ShopModel;
  shopId: number = 0;
  userId:number=0;
  constructor(
    private formBuilder: FormBuilder,
    private route: ActivatedRoute,
    private shopService: ShopService,
    private toastr: ToastrService,
    private router: Router
  ) {
    this.route.queryParams.subscribe((params) => {
      this.shopId = params["shopId"];
    });
    let user=JSON.parse(localStorage.getItem("currentUser"));
    this.userId=user.userId;
  } 
  editShopForm: FormGroup;

  ngOnInit() {
    this.getShopById(this.shopId);
  }

  getShopById(shopId) {
    this.shopService.getShopById(shopId).subscribe((result) => {
      this.shop = result;
      this.initializeEditShopForm();
    });
  }

  initializeEditShopForm(): void {
    this.editShopForm = this.formBuilder.group({
      name: new FormControl("", Validators.required),
      address: new FormControl("", Validators.required),
    });
  // this.editShopForm.patchValue(this.shop);
  }
  onSubmitShop(e) {
    e.preventDefault();
    let shopModel = <AddEditShopModel>{
      id: this.shop.id,
      name: this.editShopForm.get("name").value,
      address: this.editShopForm.get("address").value,
      createdBy:this.userId,
    };
    this.shopService.updateShop(shopModel).subscribe(() => {
      this.toastr.success("Shop Edited Successfully!", "Success!");
      this.router.navigate(["./dashboard"]);
    });
  }
}
