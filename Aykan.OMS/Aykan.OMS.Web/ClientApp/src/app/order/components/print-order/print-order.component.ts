import { Component, OnInit } from "@angular/core";
import { Subscription } from "rxjs";
import { OrderService } from "../../services/order.service";
import { ActivatedRoute } from "@angular/router";
import {
  OrderDetailViewModel,
  OrderListViewModel,
  IOrderViewModel,
} from "../../models/create-order.model";
@Component({
  selector: "app-print-order",
  templateUrl: "./print-order.component.html",
  styleUrls: ["./print-order.component.css"],
})
export class PrintOrderComponent implements OnInit {
  constructor(
    private orderService: OrderService,
    private route: ActivatedRoute
  ) {
    this.route.queryParams.subscribe((params) => {
      this.orderId = params["orderId"];
    });
  }
  subscriptions: Subscription[] = [];
  orderId: string;
  order: IOrderViewModel[];
  orderDetail: OrderDetailViewModel[];
  orderList: OrderListViewModel[] = [];
  ngOnInit() {
    this.getOrderDetails();
    this.getOrderList();
    this.orderService.setPrintOrderInfo(true);
  }
  ngOnDestroy() {
    this.orderService.setPrintOrderInfo(false);
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
        },
        (error) => {
          console.log(error);
        }
      )
    );
  }

  getStatusOrder(value: boolean): string {
    if (value == true) {
      return "Processed";
    } else if (value == false) {
      return "Unprocessed";
    }
  }
}
