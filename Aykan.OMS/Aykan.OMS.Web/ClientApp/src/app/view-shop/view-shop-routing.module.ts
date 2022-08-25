import { NgModule } from "@angular/core";
import { Routes, RouterModule } from "@angular/router";
import { AuthGuard } from "../core/guards/auth.guard";
import { RoleGuard } from "../core/guards/role.guard";
import { ViewShopComponent } from "./view-shop.component";

const routes: Routes = [
  {
    path: "",
    component: ViewShopComponent,
    canActivate: [AuthGuard, RoleGuard],
    data: {
      routePermissionCode: "view-shop",
    },
  },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class ViewShopRoutingModule {}
