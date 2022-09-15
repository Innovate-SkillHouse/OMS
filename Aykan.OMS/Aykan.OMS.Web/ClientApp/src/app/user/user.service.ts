import { Injectable } from "@angular/core";
import { HttpClient } from "@angular/common/http";
import { Observable, Subject } from "rxjs";
import { CommonService } from "src/app/shared/services/common.service";
import { AddEditShopModel } from "src/app/add-shop/models/add-shop.model";
import { UserUrlConstant } from "../shared/constants/url-constants";

@Injectable({ providedIn: "root" })
export class UserService {
  getShopInfo = new Subject<boolean>();
  constructor(private http: HttpClient,private commonService:CommonService) {}

  GetAllUser(): Observable<any[]> {
 
    return this.http.get<any[]>(`${UserUrlConstant.GET_ALL_USERS}`);
  }

  
}
