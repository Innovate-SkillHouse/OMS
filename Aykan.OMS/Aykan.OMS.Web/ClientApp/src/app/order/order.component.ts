import { Component, OnInit } from "@angular/core";
import { AuthenticationService } from "../core/services/authentication.service";
import { OrderService } from "../order/services/order.service";
import { Subscription } from "rxjs";
import { InputModel } from "../shared/model/shared.model";
import { ActivatedRoute } from "@angular/router";
import {
  OrderModel,
  OrderDetailViewModel,
  OrderListViewModel,
  Idropdown,
  IOrderFilterModel,
} from "../order/models/create-order.model";
import { Router } from "@angular/router";
import { ShopModel } from "../shop/models/shop.model";
import { ShopService } from "../shop/services/shop.service";
import { Rolls } from "../shared/enums/enum";
@Component({
  selector: "app-order",
  templateUrl: "./order.component.html",
  styleUrls: ["./order.component.css"],
})
export class OrderComponent implements OnInit {
  shopId: number;
  shops: ShopModel[];
  currentPageIndex = 1;
  orderCount = 0;
  incrementer: number = 0;
  totalPageCount: number;
  pageNo: number = 0;
  address: string;
  selectedShopkeeperId: number = 0;
  selectedOrderDate: string = null;
  selectedStatus: string = "";
  isSortAscending: boolean = false;
  roleId: number;
  isWholeSaler: boolean = false;
  loading: boolean = false;
  subscriptions: Subscription[] = [];
  currentUser: InputModel;
  orderList: OrderListViewModel[];
  shopName: string;
  countArray: Idropdown[] = [];
  maxPageCount: number[] = [1, 2, 3];
  searchByOrderNo: string;
  orders: OrderListViewModel[] = [];
  value: OrderListViewModel[] = [];
  detailsValue: number;
  orderNo: string;
  maxRows: number = 0;
  state: boolean;
  userId:number=0;

  constructor(
    private authenticationService: AuthenticationService,
    private orderService: OrderService,
    private shopService: ShopService,
    private route: ActivatedRoute,
    private router: Router
  ) {
    this.route.queryParams.subscribe((params) => {
      this.orderNo = params["orderNo"];
    });
   
    this.shopId = JSON.parse(sessionStorage.getItem("shopId"));
    this.address = JSON.parse(sessionStorage.getItem("address"));
    this.shopName = JSON.parse(sessionStorage.getItem("shopName"));
    let user = JSON.parse(localStorage.getItem("currentUser"));
    this.roleId = parseInt(user.roleId);
    this.isWholeSaler = Rolls.WholeSaler === this.roleId;
    if(!this.isWholeSaler)
       this.userId=user.userId;
  }

  ngOnInit() {
    const currentUser = this.authenticationService.currentUserValue;
    this.currentUser = {
      id: currentUser.userId,
      shopId: this.shopId,
    };
    this.getFilterOptions();
    this.getOrder();
    if (!this.isWholeSaler) {
      this.getSalesmenOrderCount();
    } else {
      this.getWholeSalerOrderCount();
    }
    this.getAllShop();
  }

  getFilterOptions() {
    const filterOptions = this.orderService.getfilterOptions();
    if (filterOptions != null) {
      this.selectedShopkeeperId = filterOptions.shopkeeperId;
      (this.selectedStatus = filterOptions.isOrderCompleted),
        (this.currentPageIndex = filterOptions.currentPageIndex);
      this.incrementer = filterOptions.incrementer;
      this.isSortAscending = filterOptions.isSortAscending;
    }
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
  public getTotalPageCount(totalOrderCount, maxRows): number {
    this.maxPageCount = [1, 2, 3];
    let totalPageCount = Math.floor(totalOrderCount / maxRows);
    if (!(totalOrderCount % maxRows === 0)) totalPageCount += 1;
    // if (this.currentPageIndex > totalPageCount) this.currentPageIndex = 1;
    if (this.currentPageIndex == 1) this.incrementer = 0;
    if (totalPageCount <= this.maxPageCount.length) {
      this.maxPageCount = [];
      this.incrementer = 0;
      for (let i = 1; i <= totalPageCount; i++) {
        this.maxPageCount.push(i);
      }
    }
    return totalPageCount;
  }
  onClose() {
    this.currentPageIndex = 1;
    this.selectedOrderDate = null;
    if (!this.isWholeSaler) {
      this.selectedShopkeeperId = this.currentUser.shopId;

      this.getSallerOrders();
      this.getSalesmenOrderCount();
    } else {
      this.getWholeSalerOrders();
      this.getWholeSalerOrderCount();
    }
  }

  onFilterByDate() {
    this.currentPageIndex = 1;
    if (!this.isWholeSaler) {
      this.selectedShopkeeperId = this.currentUser.shopId;
      this.getSallerOrders();
      this.getSalesmenOrderCount();
    } else {
      this.getWholeSalerOrders();
      this.getWholeSalerOrderCount();
    }
  }

  getWholeSalerOrderCount() {
    this.subscriptions.push(
      this.orderService
        .getTotalOrderCount(
          this.selectedOrderDate === null ? "" : this.selectedOrderDate,
          this.selectedShopkeeperId,
          this.selectedStatus,
          this.currentUser.id
        )
        .subscribe((totalOrderCount) => {
          this.maxRows = 10;
          this.totalPageCount = this.getTotalPageCount(
            totalOrderCount,
            this.maxRows
          );
        })
    );
  }

  getSalesmenOrderCount() {
    this.subscriptions.push(
      this.orderService
        .getTotalOrderCountForSalesmen(
          this.selectedShopkeeperId === null ? 0 : this.selectedShopkeeperId,
          this.selectedOrderDate === null ? "" : this.selectedOrderDate,
          this.currentUser.id
        )
        .subscribe((totalOrderCount) => {
          this.maxRows = 5;
          this.totalPageCount = this.getTotalPageCount(
            totalOrderCount,
            this.maxRows
          );
        })
    );
  }

  getOrder() {
    if (this.isWholeSaler) {
      // this.selectedShopkeeperId = 0;
      // this.selectedOrderDate = null;
      // this.selectedStatus = "";
      // this.currentPageIndex = 1;
      // this.incrementer = 0;
      this.getWholeSalerOrders();
    } else {
      this.selectedShopkeeperId = this.currentUser.shopId;
      this.getSallerOrders();
    }
  }

  getTotalPrice(item): number {
    let totalPriceNum = 0;
    item.orderDetails.forEach((x) => {
      let sum = x.mrp * x.quantity;
      totalPriceNum += sum;
    });
    let totalPrice = this.numberWithCommas(totalPriceNum);
    return totalPrice;
  }

  numberWithCommas(totalPriceNum) {
    var result = totalPriceNum.toString().split(".");

    var lastThree = result[0].substring(result[0].length - 3);
    var otherNumbers = result[0].substring(0, result[0].length - 3);
    if (otherNumbers != "") lastThree = "," + lastThree;
    var output = otherNumbers.replace(/\B(?=(\d{2})+(?!\d))/g, ",") + lastThree;

    if (result.length > 1) {
      output += "." + result[1];
    }
    return output;
  }

  getTotalItemCount(item) {
    let count = 0;
    item.orderDetails.forEach((x) => {
      count++;
    });
    return count;
  }

  isOrderCompleted(item): string {
    if (item.isOrderCompleted == true) {
      return "Processed";
    } else if (item.isOrderCompleted == false) {
      return "Unprocessed";
    }
  }

  onClickOrderDetails(orderDetails: OrderListViewModel) {
    const filterOptions: IOrderFilterModel = {
      shopkeeperId: this.selectedShopkeeperId,
      isOrderCompleted: this.selectedStatus,

      currentPageIndex: this.currentPageIndex,
      incrementer: this.incrementer,
      isSortAscending: this.isSortAscending,
    };
    this.orderService.setfilterOptions(filterOptions);
    this.router.navigate(["/order/view-order"], {
      queryParams: {
        orderId: orderDetails.id,
      },
    });
    this.orderNo = orderDetails.orderNo;
  }

  onStartOrderSort(e: any) {
    this.isSortAscending = !this.isSortAscending;
    this.getWholeSalerOrders();
  }

  onChangePage(
    pageIndex: number,
    state: boolean,
    selectedShopkeeperId: number,
    selectedStatus: string
  ) {
    if (
      pageIndex < this.currentPageIndex &&
      this.incrementer > 0 &&
      pageIndex < this.totalPageCount - 1
    ) {
      this.incrementer -= 1;
    }
    if (
      pageIndex > this.currentPageIndex &&
      pageIndex > 2 &&
      this.totalPageCount > pageIndex
    ) {
      this.incrementer += 1;
    }
    this.currentPageIndex = pageIndex;
    if (this.isWholeSaler) {
      this.isSortAscending = state;
      this.getWholeSalerOrders();
    } else {
      this.getSallerOrders();
    }
  }
  public getWholeSalerOrders() {
    this.subscriptions.push(
      this.orderService
        .getWholeSalerOrders(
          this.currentPageIndex === null ? "" : this.currentPageIndex,
          this.isSortAscending === null ? "" : this.isSortAscending,
          this.selectedOrderDate === null ? "" : this.selectedOrderDate,
          this.selectedShopkeeperId === null ? "" : this.selectedShopkeeperId,
          this.selectedStatus ? this.selectedStatus : "",
          this.currentUser.id
        )
        .subscribe(
          (result) => {
            this.orderList = result;
          },
          (error) => console.log(error)
        )
    );
  }
  public getSallerOrders() {
    this.subscriptions.push(
      this.orderService
        .getSallerOrders(
          this.currentPageIndex,
          this.selectedShopkeeperId,
          this.selectedOrderDate,
          this.currentUser.id
        )
        .subscribe(
          (result) => {
            this.orderList = result;
            this.loading = true;
          },
          (error) => console.log(error)
        )
    );
  }
  // public onSearchByOrderId(): void {
  //   if (
  //     this.orders.length <= this.orderList.length ||
  //     this.currentPageIndex != this.pageNo
  //   ) {
  //     this.orders = this.orderList;
  //     this.pageNo = this.currentPageIndex;
  //   }
  //   if (this.selectedShopkeeperId == 0 && this.selectedStatus == "") {
  //     this.orderList = this.orders;
  //     this.orderList = this.orderList.filter((ord) => {
  //       if (ord.orderNo.includes(this.searchByOrderNo)) {
  //         return true;
  //       }
  //     });
  //   }
  //   if (this.selectedShopkeeperId != 0 && this.selectedStatus == "") {
  //     this.orderList = this.orders;
  //     let value = this.selectedShopkeeperId;
  //     this.orderList = this.orderList.filter(
  //       (x) =>
  //         x.orderDetails &&
  //         x.orderDetails.find((y) => y.shopkeeperId == value.toString())
  //     );
  //     this.orderList = this.orderList.filter((ord) => {
  //       if (ord.orderNo.includes(this.searchByOrderNo)) {
  //         return true;
  //       }
  //     });
  //   }
  //   if (this.selectedShopkeeperId == 0 && this.selectedStatus != "") {
  //     this.orderList = this.orders;
  //     let value = this.selectedStatus;
  //     var boolValue = JSON.parse(value);
  //     this.orderList = this.orderList.filter(
  //       (x) => x.isOrderCompleted == boolValue
  //     );
  //     this.orderList = this.orderList.filter((ord) => {
  //       if (ord.orderNo.includes(this.searchByOrderNo)) {
  //         return true;
  //       }
  //     });
  //   }
  //   if (this.selectedShopkeeperId != 0 && this.selectedStatus != "") {
  //     this.orderList = this.orders;
  //     let shopkeeperValue = this.selectedShopkeeperId;
  //     let value = this.selectedStatus;
  //     var boolValue = JSON.parse(value);
  //     this.orderList = this.orderList.filter(
  //       (x) =>
  //         x.orderDetails &&
  //         x.orderDetails.find(
  //           (y) => y.shopkeeperId == shopkeeperValue.toString()
  //         )
  //     );
  //     this.orderList = this.orderList.filter(
  //       (y) => y.isOrderCompleted == boolValue
  //     );
  //     this.orderList = this.orderList.filter((ord) => {
  //       if (ord.orderNo.includes(this.searchByOrderNo)) {
  //         return true;
  //       }
  //     });
  //   }
  // }

  public onFilterByShopkeeperId() {
    this.currentPageIndex = 1;
    this.getWholeSalerOrders();
    this.getWholeSalerOrderCount();
  }
  public onFilterByIsOrderCompleted() {
    this.currentPageIndex = 1;
    this.getWholeSalerOrders();
    this.getWholeSalerOrderCount();
  }

  previousPage() {
    if (this.currentPageIndex > 1) {
      this.currentPageIndex -= 1;
      if (
        this.currentPageIndex >= 2 &&
        this.currentPageIndex < this.totalPageCount - 1
      ) {
        this.incrementer -= 1;
      }
      this.onChangePage(
        this.currentPageIndex,
        this.isSortAscending,
        this.selectedShopkeeperId,
        this.selectedStatus
      );
    }
  }

  nextPage() {
    if (this.totalPageCount > this.currentPageIndex) {
      this.currentPageIndex += 1;
      if (
        this.currentPageIndex > 2 &&
        this.totalPageCount > this.currentPageIndex
      ) {
        this.incrementer += 1;
      }
      this.onChangePage(
        this.currentPageIndex,
        this.isSortAscending,
        this.selectedShopkeeperId,
        this.selectedStatus
      );
    }
  }
}
