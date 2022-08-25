import { Injectable } from "@angular/core";
import { HttpClient } from "@angular/common/http";
import { Observable, Subject } from "rxjs";
import { ShopModel } from "../models/shop.model";
import { ShopURLConstants } from "../../shared/constants/url-constants";
import { CommonService } from "src/app/shared/services/common.service";
import { AddEditShopModel } from "src/app/add-shop/models/add-shop.model";

@Injectable({ providedIn: "root" })
export class ShopService {
  getShopInfo = new Subject<boolean>();
  constructor(private http: HttpClient,private commonService:CommonService) {}

  getShops(userId:number): Observable<ShopModel[]> {
    const mapParams=new Map();
    mapParams.set("userId",userId);
    const params=this.commonService.getHttpParams(mapParams);
    return this.http.get<ShopModel[]>(`${ShopURLConstants.LOAD_All_SHOPS}`,{params});
  }
  addShop(shop: AddEditShopModel): Observable<any> {
    return this.http.put<any>(`${ShopURLConstants.ADD_SHOP_URL}`, shop);
  }

  deleteShop(id: number): Observable<ShopModel[]> {
    const mapParams = new Map();
    mapParams.set("id", id);
    const params = this.commonService.getHttpParams(mapParams);
    return this.http.get<ShopModel[]>(`${ShopURLConstants.DELETE_SHOP}`, {
      params,
    });
  }

  setShopInfo(flag: boolean) {
    return this.getShopInfo.next(flag);
  }
  getShopById(shopId:number):Observable<ShopModel>{
    const mapParams = new Map();
    mapParams.set("shopId", shopId);
    const params = this.commonService.getHttpParams(mapParams);
    return this.http.get<ShopModel>(`${ShopURLConstants.GET_SHOP_BY_ID}`,
    { params, 
    });
  }
  updateShop(shopDetail:AddEditShopModel){
    return this.http.put<AddEditShopModel>(`${ShopURLConstants.UPDATE_SHOP}`,shopDetail);
  }
  
}
