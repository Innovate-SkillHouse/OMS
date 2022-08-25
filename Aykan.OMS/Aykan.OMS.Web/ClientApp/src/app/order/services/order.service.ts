import { Injectable } from "@angular/core";
import { HttpClient } from "@angular/common/http";
import { Observable, Subject } from "rxjs";
import {
  OrderDetailViewModel,
  OrderListViewModel,
  IOrderFilterModel,
  IOrderViewModel,
} from "../models/create-order.model";
import { OrderURLConstants } from "../../shared/constants/url-constants";
import { InputModel } from "../../shared/model/shared.model";
import { CommonService } from "../../shared/services/common.service";
import { Categories } from "../models/create-order.model";
@Injectable({ providedIn: "root" })
export class OrderService {
  private events: Event[];
  private treeViewContext: Event;
  currentPageIndex: Number = 0;
  currentShopName: string;
  filterShopkeeperId: number;
  filterStatus: string;
  filterOptions: IOrderFilterModel = null;
  constructor(private http: HttpClient, private commonService: CommonService) {}
  getPrintOrderInfo = new Subject<boolean>();
  setPrintOrderInfo(flag: boolean) {
    return this.getPrintOrderInfo.next(flag);
  }

  getWholeSalerOrders(
    currentPageIndex,
    isSortAscending,
    selectedOrderDate,
    selectedShopkeeperId,
    selectedStatus,
    userId:number
  ): Observable<any> {
    const mapParams = new Map();
    mapParams.set("currentPageIndex", currentPageIndex);
    mapParams.set("isSortAscending", isSortAscending);
    mapParams.set("selectedOrderDate", selectedOrderDate);
    mapParams.set("selectedShopkeeperId", selectedShopkeeperId);
    mapParams.set("selectedStatus", selectedStatus);
    mapParams.set("userId", userId);
    const params = this.commonService.getHttpParams(mapParams);
    return this.http.get<OrderListViewModel[]>(
      `${OrderURLConstants.LOAD_All_ORDERS}`,
      { params }
    );
  }

  getShopOrdersList(
    shopKeeperId: number,
    currentPageIndex: number,
    selectedStatus: string,
    isSortAscending: boolean
  ): Observable<any> {
    const mapParams = new Map();
    mapParams.set("shopKeeperId", shopKeeperId);
    mapParams.set("currentPageIndex", currentPageIndex);
    mapParams.set("selectedStatus", selectedStatus);
    mapParams.set("isSortAscending", isSortAscending);
    const params = this.commonService.getHttpParams(mapParams);
    return this.http.get<OrderListViewModel[]>(
      `${OrderURLConstants.LOAD_CURRENT_SHOP_ORDERS}`,
      { params }
    );
  }

  getSearchStatusList(
    isOrderCompletedValue: string,
    currentPageIndex: number,
    selectedShopkeeperId: number,
    isSortAscending: boolean
  ): Observable<any> {
    const mapParams = new Map();
    mapParams.set("isOrderCompletedValue", isOrderCompletedValue);
    mapParams.set("currentPageIndex", currentPageIndex);
    mapParams.set("selectedShopkeeperId", selectedShopkeeperId);
    mapParams.set("isSortAscending", isSortAscending);
    const params = this.commonService.getHttpParams(mapParams);
    return this.http.get<OrderListViewModel[]>(
      `${OrderURLConstants.FILTER_ORDER_BY_STATUS}`,
      { params }
    );
  }

  getSallerOrders(
    currentPageIndex: number,
    shopId: number,
    orderDate: string,
    userId:number
  ): Observable<any> {
    const mapParams = new Map();
    // mapParams.set("currentUserId", currentUserId);
    mapParams.set("currentPageIndex", currentPageIndex);
    mapParams.set("shopId", shopId);
    mapParams.set("orderDate", orderDate);
    mapParams.set("userId", userId);
    const params = this.commonService.getHttpParams(mapParams);
    return this.http.get<OrderListViewModel[]>(
      `${OrderURLConstants.LOAD_All_SALLER_ORDERS}`,
      { params }
    );
  }

  getTotalOrderCount(
    selectedOrderDate: string,
    selectedShopkeeperId: number,
    selectedStatus: string,
    userId:number
  ) {
    const mapParams = new Map();
    mapParams.set("selectedOrderDate", selectedOrderDate);
    mapParams.set("selectedShopkeeperId", selectedShopkeeperId);
    mapParams.set("selectedStatus", selectedStatus);
    mapParams.set("userId", userId);
    const params = this.commonService.getHttpParams(mapParams);
    return this.http.get<number>(`${OrderURLConstants.COUNT_ORDERS}`, {
      params,
    });
  }

  getTotalOrderCountForSalesmen(shopId: number, orderDate: string,userId:number) {
    const mapParams = new Map();
    mapParams.set("shopId", shopId);
    mapParams.set("orderDate", orderDate);
    mapParams.set("userId", userId);
    const params = this.commonService.getHttpParams(mapParams);
    return this.http.get<number>(
      `${OrderURLConstants.COUNT_ORDERS_FOR_SALESMEN}`,
      { params }
    );
  }

  processOrder(id: string, orderDetail: OrderDetailViewModel[]) {
    const mapParams = new Map();
    mapParams.set("orderId", id);
    const params = this.commonService.getHttpParams(mapParams);
    return this.http.post<any>(
      `${OrderURLConstants.PROCESS_ORDER}`,
      orderDetail,
      { params }
    );
  }

  updateOrder(orderDetail: OrderDetailViewModel[], note: string) {
    const mapParams = new Map();
    mapParams.set("note", note);
    const params = this.commonService.getHttpParams(mapParams);
    return this.http.post<any>(
      `${OrderURLConstants.UPDATE_ORDER}`,
      orderDetail, {params}
    );
  }

  cancelOrder(id: string) {
    const mapParams = new Map();
    mapParams.set("orderId", id);
    const params = this.commonService.getHttpParams(mapParams);
    return this.http.post<any>(
      `${OrderURLConstants.CANCEL_ORDER}`,
      {},
      { params }
    );
  }

  getCategories(): Observable<Categories[]> {
    return this.http.get<Categories[]>(
      `${OrderURLConstants.LOAD_All_CATEGORIES}`
    );
  }

  getOrderById(orderId: string) {
    const mapParams = new Map();
    mapParams.set("orderDetailedId", orderId);
    const params = this.commonService.getHttpParams(mapParams);
    return this.http.get<any>(`${OrderURLConstants.GET_ORDERS_BY_ID}`, {
      params,
    });
  }
  getOrderListById(orderId: string) {
    const mapParams = new Map();
    mapParams.set("orderListId", orderId);
    const params = this.commonService.getHttpParams(mapParams);
    return this.http.get<OrderListViewModel[]>(
      `${OrderURLConstants.GET_ORDERS_LIST_BY_ID}`,
      { params }
    );
  }

  getfilterOptions(): IOrderFilterModel {
    return this.filterOptions;
  }

  setfilterOptions(filterOptions: IOrderFilterModel): void {
    this.filterOptions = filterOptions;
  }
  // getAllOrders() {
  //   return this.http.get<OrderListViewModel[]>(
  //     `${OrderURLConstants.LOAD_All_ORDER}`
  //   );
  // }
}
