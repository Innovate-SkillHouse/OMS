import { Component, OnInit, EventEmitter, Output, Input } from "@angular/core";
import { InputModel } from "../../../shared/model/shared.model";
import { AuthenticationService } from "../../../core/services/authentication.service";
import { Subscription } from "rxjs";
import { OrderService } from "../../services/order.service";
import { CartModel } from "../../models/cart.model";
import { parseHostBindings } from "@angular/compiler";
import { ActivatedRoute } from "@angular/router";
import { Router } from "@angular/router";
import {
  ICartModel,
  OrderDetailViewModel,
  Product,
} from "../../models/create-order.model";
import { CreateOrderService } from "../../services/create.order.service";
import { LoginModel } from "../../../login/models/login.model";
import { ToastrService } from "ngx-toastr";
import { ShopService } from "src/app/shop/services/shop.service";
import { ShopModel } from "src/app/shop/models/shop.model";
@Component({
  selector: "app-cart",
  templateUrl: "./cart.component.html",
  styleUrls: ["./cart.component.css"],
})
export class CartComponent implements OnInit {
  shopId: number;
  currentUser: InputModel;
  orderId: string;
  user: LoginModel;
  showPlaceOrderConfirmation: boolean = false;
  confirmationMessage: string;
  address: string;
  note: string;
  subscriptions: Subscription[] = [];
  cartData: ICartModel[] = [];
  shopName: string;
  // totalAmount: number;
  quantity: number;
  shops: ShopModel[];
  item: Product[] = [];
  orderDetailViewModels: OrderDetailViewModel[] = [];
  showAddButton: boolean = true;
  disablePlaceOrder: boolean = false;
  loading: boolean = false;
  cartLength: number = 0;
  constructor(
    private authenticationService: AuthenticationService,
    private orderService: OrderService,
    private shopService: ShopService,
    private route: ActivatedRoute,
    private createOrderService: CreateOrderService,
    private router: Router,
    private toastr: ToastrService
  ) {
    this.authenticationService.currentUser.subscribe((x) => (this.user = x));
    const currentUser = this.authenticationService.currentUserValue;
    this.currentUser = {
      id: currentUser.userId,
      shopId: this.shopId,
    };
    const Cart: ICartModel[] = JSON.parse(localStorage.getItem("Cart"));
    this.shopName = sessionStorage.getItem("shopName").replace(/"/g, "");
    this.address = sessionStorage.getItem("address").replace(/"/g, "");
    if (Cart != null) {
      if (Cart.length > 0) {
        this.cartData = Cart;
        this.loading = true;
      }
    } else {
      this.loading = true;
    }
  }
  ngOnInit() {}
  // onClickEditItemIcon(item) {
  //   this.router.navigate(["/order/edit-cartitem"], {
  //     queryParams: { id: item.id },
  //   });
  // }
  // getSerialNo(count,item):number{
  //   if(count===item.length){
  //     this.i+=item.length;
  //     return this.i;
  //   }
  //   return this.i+count;

  // }
  selectedUnit(item: Product, value) {
    const itemIndex = this.cartData.findIndex((x) =>
      x.product.find((y) => y.id == item.id)
    );
    if (itemIndex !== -1) {
      item.unitWeight = value;
    }
  }
  onConfirmPlaceOrder() {
    this.showPlaceOrderConfirmation = false;
    const Cart: ICartModel[] = JSON.parse(localStorage.getItem("Cart"));
    let cartData: ICartModel[] = Cart ? [...Cart] : [];

    this.cartData.forEach((x) => {
      const category: ICartModel = {
        categoryId: x.categoryId,
        categoryName: x.categoryName ? x.categoryName : "",
        shopkeeperId: JSON.parse(sessionStorage.getItem("shopId")),
        product: x.product.filter((item) => item.quantity > 0),
      };
      var oldCartIndex = cartData.findIndex(
        (cart) => cart.categoryId === category.categoryId
      );
      if (oldCartIndex != -1) {
        cartData = cartData.filter((c) => c.categoryId != category.categoryId);
      }
      cartData.push(category);
      localStorage.setItem("Cart", JSON.stringify(cartData));
    });

    this.cartData = JSON.parse(localStorage.getItem("Cart"));


    this.subscriptions.push(
      this.createOrderService
        .createOrderDetail(this.cartData, this.user.userId, this.note)
        .subscribe(
          (x) => {
            this.toastr.success("Order Placed Successfully!", "Success!");
            localStorage.removeItem("Cart");
            this.shopService.setShopInfo(false);
            sessionStorage.removeItem("shopId");
            this.router.navigate(["dashboard"]);
            this.createOrderService.setCartCount(null);
          },
          (error) => {
            console.log(error);
          }
        )
    );
  }
  isUnitSelected():boolean{
   //return (this.cartData.find(c=>c.product.find(p=>p.unitWeight==="0"))?true:false);
   return (this.note==""?this.disablePlaceOrder: !this.disablePlaceOrder);
  }

  onChangeNote(value)
  {
    this.note = value;
    this.disablePlaceOrder = true;
  }

  onPlaceOrder() {
    if (this.showAddButton == false) {
      this.confirmationMessage =
        "Removed Some of the Item's Here. Do you want to place the order ?";
    } else {
      this.confirmationMessage = "Do you want to place the order ?";
    }
    this.showPlaceOrderConfirmation = true;
  }

  // calculatePrice(item, value) {
  //   let product: Product = { ...item };
  //   // Product calculation
  //   if (value == null) {
  //     product.netPrice = product.mrp * product.quantity;
  //   } else {
  //     product.netPrice = product.mrp * value;
  //   }
  //   return product.quantity;
  // }

  increment(item: Product, value) {
    const itemIndex = this.cartData.findIndex((x) =>
      x.product.find((y) => y.id == item.id)
    );
    if (itemIndex !== -1) {
      if (parseInt(value) >= 0) {
        item.quantity = parseInt(value) + 1;
      } else {
        item.quantity += 1;
      }
    }
    if (item.quantity > 0) {
      this.showAddButton = true;
    }
  }

  decrement(item: Product, value) {
    const itemIndex = this.cartData.findIndex((x) =>
      x.product.find((y) => y.id == item.id)
    );
    if (itemIndex !== -1 && item.quantity > 0) {
      if (parseInt(value) >= 0) {
        item.quantity = parseInt(value) - 1;
      } else {
        item.quantity -= 1;
      }
    }
    if (item.quantity == 0) {
      this.showAddButton = false;
    }
  }

  onAddQty(value, item: Product) {
    const itemIndex = this.cartData.findIndex((x) =>
      x.product.find((y) => y.id == item.id)
    );
    if (itemIndex !== -1) {
      item.quantity = this.isNumeric(value) ? parseInt(value) : value;
    }
    if (item.quantity ===0) {
      this.showAddButton = false;
    }
  }

  isNumeric(value) {
    return /^-?\d+$/.test(value);
  }
}
