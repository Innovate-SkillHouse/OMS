import { Component, OnInit } from "@angular/core";
import { Subscription } from "rxjs";
import { Rolls } from "src/app/shared/enums/enum";
import { ShopModel } from "../shop/models/shop.model";
import { ShopService } from "../shop/services/shop.service";
import { ToastrService } from "ngx-toastr";
import { Router } from "@angular/router";

@Component({
  selector: "app-view-shop",
  templateUrl: "./view-shop.component.html",
  styleUrls: ["./view-shop.component.css"],
})
export class ViewShopComponent implements OnInit {
  shops: ShopModel[];
  roleId: number;
  isWholeSaler: boolean;
  subscriptions: Subscription[] = [];
  shopId: number;
  userId:number=0;

  constructor(
    private shopService: ShopService,
    private toastr: ToastrService,
    private router: Router
  ) {
    // this.shopId = JSON.parse(localStorage.getItem("shopId"));
    let user = JSON.parse(localStorage.getItem("currentUser"));
    this.roleId = parseInt(user.roleId);
    let wholesaler = Rolls.WholeSaler === this.roleId;
    this.isWholeSaler = wholesaler;
    this.userId=user.userId;
  }

  ngOnInit() {
    this.getAllShop();
  }
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

  onDeleteShop(id) {
    this.subscriptions.push(
      this.shopService.deleteShop(id).subscribe(
        (result) => {
          this.toastr.success("Shop Deleted Successfully!", "Success!");
          this.getAllShop();
        },
        (error) => console.log(error)
      )
    );
  }
  onEditShop(shopId) {
    this.router.navigate(["/edit-shop"], {
      queryParams: {
        shopId: shopId,
      },
    });
  }
}
