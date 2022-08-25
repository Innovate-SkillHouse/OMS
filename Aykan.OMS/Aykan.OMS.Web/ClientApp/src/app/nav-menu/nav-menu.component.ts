import { Component } from "@angular/core";
import { CreateOrderService } from "../../app/order/services/create.order.service";
import { AuthenticationService } from "../core/services/authentication.service";
import { ShopService } from "../../app/shop/services/shop.service";
import { Subject } from "rxjs";
import { Rolls } from "../shared/enums/enum";
import { Router } from "@angular/router";
import { ToastrService } from "ngx-toastr";
import { OrderService } from "../order/services/order.service";
import { IOrderFilterModel } from "../order/models/create-order.model";
@Component({
  selector: "app-nav-menu",
  templateUrl: "./nav-menu.component.html",
  styleUrls: ["./nav-menu.component.css"],
})
export class NavMenuComponent {
  cartCount: number;
  isShopEntered: boolean = false;
  userExist: boolean = false;
  roleId: number;
  isWholeSaler: boolean = false;
  isChangePasswordShow = false;
  filterOptions: IOrderFilterModel = null;
  isPrinted: boolean = false;
  constructor(
    private createOrderService: CreateOrderService,
    private authenticationService: AuthenticationService,
    private orderService: OrderService,
    private shopService: ShopService,
    private router: Router,
    private toastr: ToastrService
  ) {
    var retrievedData = localStorage.getItem("Cart");
    var shopId = sessionStorage.getItem("shopId");
    let user = JSON.parse(localStorage.getItem("currentUser"));
    if (user) {
      this.userExist = true;
      this.roleId = parseInt(user.roleId);
      let wholesaler = Rolls.WholeSaler === this.roleId;
      this.isWholeSaler = wholesaler;
    }
    if (shopId) {
      this.isShopEntered = true;
    }

    var cart = JSON.parse(retrievedData);
    if (cart) {
      if (cart.length > 0) {
        this.cartCount=0;
        cart.forEach((cart) => {
          this.cartCount += cart.product.length;
        });
      }
    }
    this.createOrderService.getCartCount.subscribe(
      (items) => (this.cartCount = items)
    );
    this.authenticationService.getUserInfo.subscribe(
      (items) => (this.userExist = items)
    );
    this.shopService.getShopInfo.subscribe(
      (items) => (this.isShopEntered = items)
    );
    this.orderService.getPrintOrderInfo.subscribe(
      (items) => (this.isPrinted = items)
    );
  }
  isExpanded = false;
  showNav = true;
  ngOnInit() {}

  ngOnChanges() {}
  collapse() {
    this.isExpanded = false;
  }

  onChangePassword() {
    this.isChangePasswordShow = true;
  }

  toggle() {
    this.isExpanded = !this.isExpanded;
  }
  logout() {
    this.orderService.setfilterOptions(this.filterOptions);
    this.authenticationService.logout();
    this.router.navigate(["/login"]);
  }

  onClickHome() {
    this.showNav = false;
    this.router.navigate(["/dashboard"]).then(() => window.location.reload());
  }

  onClose() {
    this.isChangePasswordShow = false;
  }

  enterShop() {
    if (this.isShopEntered) {
      this.router.navigate(["/order/cart"]);
      return true;
    } else {
      this.toastr.warning("Please enter to the shop");
      return false;
    }
  }
}
