import { Injectable } from "@angular/core";
import {
  Router,
  CanActivate,
  ActivatedRouteSnapshot,
  RouterStateSnapshot,
  UrlTree,
} from "@angular/router";
import { AuthenticationService } from "../services/authentication.service";
import { PermissionsAndRolesList } from "../../shared/constants/constants";
import { ToastrService } from "ngx-toastr";
import { from } from "rxjs";
import { Rolls } from "../../shared/enums/enum";

@Injectable({ providedIn: "root" })
export class RoleGuard implements CanActivate {
  roleId: number;
  isWholeSaler: boolean = false;
  constructor(
    public auth: AuthenticationService,
    public router: Router,
    private toastr: ToastrService
  ) {
    let user = JSON.parse(localStorage.getItem("currentUser"));
    if (user) {
      this.roleId = parseInt(user.roleId);
      let wholesaler = Rolls.WholeSaler === this.roleId;
      this.isWholeSaler = wholesaler;
    }
  }
  canActivate(next: ActivatedRouteSnapshot, state: RouterStateSnapshot) {
    return from(this.handleRequest(next));
  }

  async handleRequest(
    next: ActivatedRouteSnapshot
  ): Promise<boolean | UrlTree> | Promise<boolean | UrlTree> {
    const currentUser = this.auth.currentUserValue;
    let routePermissionCode = next.data;
    if (routePermissionCode) {
      let PermissionModel = PermissionsAndRolesList.find(
        (x) => x.name === routePermissionCode.routePermissionCode
      );
      let Role = PermissionModel.Rolles.find(
        (x) => x.id === currentUser.roleId
      );
      if (Role) {
        if (!this.isWholeSaler) {
          return true;
        }
        return true;
      } else {
        return false;
      }
    }
  }
}
