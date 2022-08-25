import { Injectable } from "@angular/core";
import { HttpClient } from "@angular/common/http";
import { BehaviorSubject, Observable, Subject } from "rxjs";
import { map } from "rxjs/operators";
import {
  LoginUrlConstants,
  ShopURLConstants,
} from "../../shared/constants/url-constants";
import { LoginModel } from "../../login/models/login.model";
import { RegistrationModel } from "src/app/registration/models/registration.model";
import { CommonService } from "../../shared/services/common.service";

@Injectable({ providedIn: "root" })
export class AuthenticationService {
  private currentUserSubject: BehaviorSubject<LoginModel>;
  public currentUser: Observable<LoginModel>;
  getUserInfo = new Subject<any>();
  userClaims: BehaviorSubject<string[]> = new BehaviorSubject<string[]>([]);

  constructor(private http: HttpClient, private commonService: CommonService) {
    let user = JSON.parse(localStorage.getItem("currentUser"));
    this.currentUserSubject = new BehaviorSubject<LoginModel>(user);
    this.currentUser = this.currentUserSubject.asObservable();
    if (user && typeof user !== "string") {
      this.decodeToken(user.token);
    }
  }

  public get currentUserValue(): LoginModel {
    return this.currentUserSubject.value;
  }

  isInRole(roles: string[]) {
    return this.userClaims.value.find((x) => roles.includes(x)) ? true : false;
  }

  login(username: string, password: string) {
    return this.http
      .post<LoginModel>(`${LoginUrlConstants.LOGIN_URL}`, {
        username,
        password,
      })
      .pipe(
        map((user) => {
          // store user details and jwt token in local storage to keep user logged in between page refreshes
          localStorage.setItem("currentUser", JSON.stringify(user));
          // this.currentUserSubject.next(user);
          if (user.token) this.decodeToken(user.token);
          return user;
        })
      );
  }

  changePassword(changePasswordModel, currentUserId: number): Observable<any> {
    const mapParams = new Map();
    mapParams.set("currentUserId", currentUserId);
    const params = this.commonService.getHttpParams(mapParams);
    return this.http.put<any>(
      `${LoginUrlConstants.CHANGE_PASSWORD_URL}`,
      changePasswordModel,
      { params }
    );
  }

  register(registration: RegistrationModel): Observable<any> {
    return this.http.put<any>(
      `${LoginUrlConstants.REGISTRATION_URL}`,
      registration
    );
  }

  private decodeToken(token: string) {
    let tokenData = JSON.parse(atob(token.split(".")[1]));
    this.setClaims(tokenData.role);
  }

  private setClaims(roleClaims: any) {
    if (typeof roleClaims == "string") {
      this.userClaims.next([roleClaims]);
    } else if (typeof roleClaims == "object") {
      this.userClaims.next(roleClaims);
    }
  }

  setUserContext(user: LoginModel) {
    this.currentUserSubject.next(user);
    localStorage.setItem("currentUser", JSON.stringify(user));
  }

  logout() {
    // remove user from local storage to log user out
    localStorage.removeItem("currentUser");
    sessionStorage.removeItem("shopId");
    sessionStorage.removeItem("address");
    sessionStorage.removeItem("shopName");
    this.currentUserSubject.next(null);
  }
}
