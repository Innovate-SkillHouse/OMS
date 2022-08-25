import { Component, OnInit } from "@angular/core";
import { Router } from "@angular/router";
import { Rolls } from "../shared/enums/enum";
import { ShopService } from "../shop/services/shop.service";
import { CreateOrderService } from "../order/services/create.order.service";
import { ToastrService } from "ngx-toastr";
@Component({
  selector: "app-dashboard",
  templateUrl: "./dashboard.component.html",
  styleUrls: ["./dashboard.component.css"],
})
export class DashboardComponent implements OnInit {
  show: boolean;
  showShopPage = false;
  isShopEntered = false;
  showModal: boolean = false;
  roleId: number;
  isWholeSaler: boolean = false;
  onShopExitConfirmation: boolean = false;
  confirmationMessage: string;
  userId: number = 0;
  isUserHasShop:boolean=false;

  constructor(
    private router: Router,
    private shopService: ShopService,
    private createOrderService: CreateOrderService,
    private toastr: ToastrService
  ) {
    let shopId = JSON.parse(sessionStorage.getItem("shopId"));
    if (shopId) {
      this.isShopEntered = true;
    } else {
      this.isShopEntered = false;
    }
    let user = JSON.parse(localStorage.getItem("currentUser"));
    this.userId = user.userId;
    this.roleId = parseInt(user.roleId);
    let wholesaler = Rolls.WholeSaler === this.roleId;
    this.isWholeSaler = wholesaler;
    this.getShops(this.userId);
    
  }

  ngOnInit() {
    if (!this.isWholeSaler) {
      if (this.isShopEntered === true) {
        this.show = true;
      } else {
        this.show = false;
      }
    } else {
      this.show = true;
    }
  }
  getShops(userId:number){
    this.shopService.getShops(userId).subscribe((result) => {
      if (result.length)
          this.isUserHasShop=true;  
  })
}
  onClickShop() {
    if (this.isShopEntered) {
      this.confirmationMessage =
        "Item's in the cart will be cleared if you exit the shop, would you like to proceed ?";
      this.onShopExitConfirmation = true;
    } else {
      if (this.isUserHasShop) {
        this.showModal = true;
      } else {
        this.toastr.error("Please add the shop to enter the shop.", "Error", {
          timeOut: 8000,
        });
      }
    }
  }
  onClickOfCreateOrder() {
    this.router.navigate(["/order/create-order"]);
  }
  onClickOfViewOrder() {
    this.router.navigate(["/order/view-order"]);
  }
  onEnterShopName(): void {
    this.isShopEntered = true;
    this.show = true;
  }
  onClickOfExitShop() {
    this.isShopEntered = false;
    this.show = false;
    this.shopService.setShopInfo(false);
    sessionStorage.removeItem("shopId");
    sessionStorage.removeItem("address");
    sessionStorage.removeItem("shopName");
    localStorage.removeItem("Cart");
    this.createOrderService.setCartCount(null);
    this.showModal = false;
  }
}
