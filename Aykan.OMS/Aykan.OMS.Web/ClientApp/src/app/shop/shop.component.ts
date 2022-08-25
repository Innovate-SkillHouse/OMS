import { Component, EventEmitter, OnInit, Output } from "@angular/core";
import { Subscription } from "rxjs";
import { ShopService } from "../../app/shop/services/shop.service";
import { ShopModel } from "./models/shop.model";
import { Router } from "@angular/router";
import {
  FormBuilder,
  FormControl,
  FormGroup,
  Validators,
} from "@angular/forms";
@Component({
  selector: "app-shop",
  templateUrl: "./shop.component.html",
  styleUrls: ["./shop.component.css"],
})
export class ShopComponent implements OnInit {
  @Output() onEnterShopName = new EventEmitter();
  shops: ShopModel[];
  subscriptions: Subscription[] = [];
  userId: number = 0;
  constructor(
    private router: Router,
    private shopService: ShopService,
    private formBuilder: FormBuilder
  ) {
    let user = JSON.parse(localStorage.getItem("currentUser"));
    this.userId = user.userId;
    this.getAllShop();
    this.initialiseShopForm();
  }
  shopForm: FormGroup;
  ngOnInit() {}
  getAllShop() {
    this.subscriptions.push(
      this.shopService.getShops(this.userId).subscribe(
        (result) => {
          this.shops = result;
        },
        (error) => console.log(error)
      )
    );
  }
  initialiseShopForm(): void {
    this.shopForm = this.formBuilder.group({
      shopId: new FormControl("", Validators.required),
    });
  }
  onEnterShop() {
    sessionStorage.setItem(
      "shopId",
      JSON.stringify(this.shopForm.get("shopId").value)
    );
    let name = this.shops.find(
      (x) => x.id === parseInt(this.shopForm.get("shopId").value)
    ).name;
    let address = this.shops.find(
      (x) => x.id === parseInt(this.shopForm.get("shopId").value)
    ).address;
    sessionStorage.setItem("shopName", JSON.stringify(name));
    sessionStorage.setItem("address", JSON.stringify(address));
    this.shopService.setShopInfo(true);
    this.onEnterShopName.emit();
    this.router.navigate(["/dashboard"]);
  }
}
