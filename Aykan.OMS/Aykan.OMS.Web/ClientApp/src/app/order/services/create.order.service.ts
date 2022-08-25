import { Injectable } from "@angular/core";
import { HttpClient } from "@angular/common/http";
import { Observable, Subject } from "rxjs";
import {
  Categories,
  Product,
  OrderDetailViewModel,
  ICartModel,
} from "../models/create-order.model";
import { OrderURLConstants } from "../../shared/constants/url-constants";
import { CommonService } from "../../shared/services/common.service";
import { CartModel } from "../models/cart.model";
@Injectable({ providedIn: "root" })
export class CreateOrderService {
  private cartCount: number;
  getCartCount = new Subject<any>();

  constructor(private http: HttpClient, private commonService: CommonService) {}

  getCategories(): Observable<Categories[]> {
    return this.http.get<Categories[]>(
      `${OrderURLConstants.LOAD_All_CATEGORIES}`
    );
  }
  getProductsByCategoryId(categoryId: string): Observable<Product[]> {
    const mapParams = new Map();
    mapParams.set("categoryId", categoryId);
    const params = this.commonService.getHttpParams(mapParams);
    return this.http.get<Product[]>(
      `${OrderURLConstants.LOAD_All_PRODUCTS_BY_CATEGORY}`,
      { params }
    );
  }

  getAllProducts(): Observable<Product[]> {
    return this.http.get<Product[]>(`${OrderURLConstants.GET_ALL_PRODUCTS}`);
  }

  createOrderDetail(
    cartData: ICartModel[],
    userId: number,
    note: string
  ): Observable<any> {
    const mapParams = new Map();
    mapParams.set("userId", userId);
    mapParams.set("note", note);
    const params = this.commonService.getHttpParams(mapParams);
    return this.http.put<any>(`${OrderURLConstants.POST_ORDER}`, cartData, {
      params,
    });
  }
  setCartCount(count: number) {
    return this.getCartCount.next(count);
  }
}
