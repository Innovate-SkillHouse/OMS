import { Component, OnInit } from "@angular/core";
import { Subscription, BehaviorSubject } from "rxjs";
import { OrderService } from "../../services/order.service";
import { AuthenticationService } from "../../../core/services/authentication.service";
import { InputModel } from "../../../shared/model/shared.model";
import { ActivatedRoute } from "@angular/router";
import { Router } from "@angular/router";
import { ToastrService } from "ngx-toastr";
import { LoginModel } from "../../../login/models/login.model";
import { Rolls } from "../../../shared/enums/enum";
import {
  OrderDetailViewModel,
  Categories,
  OrderListViewModel,
  IOrderViewModel,
  Product,
} from "../../models/create-order.model";
import { ShopService } from "../../../shop/services/shop.service";
import { ShopModel } from "../../../shop/models/shop.model";
import { isNgTemplate } from "@angular/compiler";
@Component({
  selector: "app-view-order",
  templateUrl: "./view-order.component.html",
  styleUrls: ["./view-order.component.css"],
})
export class ViewOrderComponent implements OnInit {
  constructor(
    private orderService: OrderService,
    private authenticationService: AuthenticationService,
    private route: ActivatedRoute,
    private shopService: ShopService,
    private toastr: ToastrService,
    private router: Router
  ) {
    this.route.queryParams.subscribe((params) => {
      this.orderId = params["orderId"];
    });
    let user = JSON.parse(localStorage.getItem("currentUser"));
    this.roleId = parseInt(user.roleId);
    let wholesaler = Rolls.WholeSaler === this.roleId;
    this.isWholeSaler = wholesaler;
  }
  note: string;
  roleId: number;
  isWholeSaler: boolean = false;
  subscriptions: Subscription[] = [];
  shopId: number;
  currentUser: InputModel;
  orderId: string;
  order: IOrderViewModel[];
  orderDetail: OrderDetailViewModel[];
  orderList: OrderListViewModel[] = [];
  shops: ShopModel[];
  categories: Categories[];
  shopName: string;
  disablePlaceOrder: boolean = true;
  confirmationMessage: string;
  showProcessOrderConfirmation: boolean = false;
  showAddButton: boolean = false;
  onUpdateOrderConfirmation: boolean = false;
  isEdited: boolean = true;
  EntireText: string[] = [];
  ngOnInit() {
    const currentUser = this.authenticationService.currentUserValue;
    this.currentUser = {
      id: currentUser.userId,
      shopId: this.shopId,
    };
    this.getOrderDetails();
    this.getOrderList();
  }

  getOrderDetails() {
    this.subscriptions.push(
      this.orderService.getOrderById(this.orderId).subscribe(
        (x) => {
          this.order = x;
          this.orderDetail = x;
        },
        (error) => {
          console.log(error);
        }
      )
    );
  }

  getOrderList() {
    this.subscriptions.push(
      this.orderService.getOrderListById(this.orderId).subscribe(
        (x) => {
          this.orderList = x;
          var text = this.orderList[0]?.note;
          this.EntireText = text.split("\n");
        },
        (error) => {
          console.log(error);
        }
      )
    );
  }

  getNetPrice(item) {
    return item.quantity * item.mrp;
  }

  getStatusOrder(value: boolean): string {
    if (value == true) {
      return "Processed";
    } else if (value == false) {
      return "Unprocessed";
    }
  }

  getTotalPrice() {
    let total = 0;
    if (this.order) {
      this.order.forEach((x) => {
        total += x.mrp * x.quantity;
      });
      return total;
    }
  }

  onClickOfProcessOrder(id, orderNo) {
    {
      this.subscriptions.push(
        this.orderService.processOrder(id, this.orderDetail).subscribe(
          (x) => {
            this.toastr.success("Order Processed Successfully!", "Success!");
            localStorage.removeItem("Cart");
            this.router.navigate(["/order/orderList"], {
              queryParams: { orderNo: orderNo },
            });
          },
          (error) => {
            console.log(error);
          }
        )
      );
    }
  }

  onClickOfCancelOrder(id: string) {
    this.subscriptions.push(
      this.orderService.cancelOrder(id).subscribe(
        (x) => {
          this.toastr.success("Order Deleted Successfully!", "Success!");
          localStorage.removeItem("Cart");
          this.router.navigate(["order/orderList"]);
        },
        (error) => {
          console.log(error);
        }
      )
    );
  }

  onProcessOrder() {
    this.confirmationMessage =
      "Are you sure you want to process this order ? Your order won't be canceled for next time!";
    this.showProcessOrderConfirmation = true;
  }

  backArrowClick(orderNo) {
    this.router.navigate(["/order/orderList"], {
      queryParams: { orderNo: orderNo },
    });
  }

  increment(item, value) {
    this.isEdited = false;
    const itemIndex = this.orderDetail.findIndex((x) => x.id === item.id);
    if (itemIndex !== -1) {
      if (parseInt(value) >= 0) {
        item.quantity = parseInt(value) + 1;
      } else {
        item.quantity += 1;
      }
    }
    this.orderDetail[itemIndex].quantity = this.calculatePrice(item, null);
    if (item.quantity > 0) {
      this.showAddButton = false;
    }
  }

  decrement(item, value) {
    this.isEdited = false;
    const itemIndex = this.orderDetail.findIndex((x) => x.id === item.id);
    if (itemIndex !== -1 && item.quantity > 0) {
      if (parseInt(value) >= 0) {
        item.quantity = parseInt(value) - 1;
      } else {
        item.quantity -= 1;
      }
    }
    this.orderDetail[itemIndex].quantity = this.calculatePrice(item, null);

    if (item.quantity == 0) {
      this.showAddButton = true;
    }
  }

  onAddQty(value, item) {
    this.isEdited = false;
    const itemIndex = this.orderDetail.findIndex((x) => x.id === item.id);
    if (itemIndex !== -1) {
      item.quantity = this.isNumeric(value) ? parseInt(value) : value;
    }
    this.orderDetail[itemIndex].quantity = this.calculatePrice(item, value);
    if (item.quantity == 0) {
      this.showAddButton = true;
    }
  }

  calculatePrice(item, value) {
    let product: Product = { ...item };
    // Product calculation
    if (value == null) {
      product.netPrice = product.mrp * product.quantity;
    } else {
      product.netPrice = product.mrp * value;
    }
    return product.quantity;
  }

  onUpdateOrder(orderNo) {
    this.orderDetail.forEach((x) => {
      if (!this.isNumeric(x.quantity)) {
        x.quantity = 0;
      }
    });
    this.subscriptions.push(
      this.orderService.updateOrder(this.orderDetail, this.note).subscribe(
        (x) => {
          this.toastr.success("Order Updated Successfully!", "Success!");
          localStorage.removeItem("Cart");
          this.router.navigate(["/order/orderList"], {
            queryParams: { orderNo: orderNo },
          });
        },
        (error) => {
          console.log(error);
        }
      )
    );
  }

  onClickUpdate() {
    if (this.showAddButton == true) {
      this.confirmationMessage =
        "Removed Some of the item's here, Do you like to proceed ?";
    } else {
      this.confirmationMessage = "Do you like to proceed ?";
    }
    this.onUpdateOrderConfirmation = true;
  }
  onClickOfPrintOrder(orderId: string): void {
    window.open(
      "/order/print-order?orderId=" + orderId + "",
      "report",
      "height=400,width=1000"
    );
    // this.router.navigate(["/order/print-order"], {
    //   queryParams: {
    //     orderId: orderId,
    //   },
    // });
  }

  isNumeric(value) {
    return /^-?\d+$/.test(value);
  }

  onChangeNoteValue(value) {
    this.note = value;
    this.disablePlaceOrder = false;
  }
}
