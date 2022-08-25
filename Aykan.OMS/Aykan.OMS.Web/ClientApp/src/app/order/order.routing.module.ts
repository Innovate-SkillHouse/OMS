import { NgModule } from "@angular/core";
import { RouterModule, Routes } from "@angular/router";
import { CreateOrderComponent } from "./components/create-order/create-order.component";
import { ViewOrderComponent } from "./components/view-order/view-order.component";
import { CartComponent } from "./components/cart/cart.component";
import { OrderComponent } from "./order.component";
import { AuthGuard } from "../core/guards/auth.guard";
import { RoleGuard } from "../core/guards/role.guard";
import { ShopComponent } from "../../app/shop/shop.component";
import { PrintOrderComponent } from "./components/print-order/print-order.component";
const routes: Routes = [
  {
    path: "orderList",
    component: OrderComponent,
    canActivate: [AuthGuard, RoleGuard],
    data: {
      routePermissionCode: "orderList",
    },
  },
  {
    path: "cart",
    component: CartComponent,
    canActivate: [AuthGuard, RoleGuard],
    data: {
      routePermissionCode: "cart",
    },
  },
  {
    path: "create-order",
    component: CreateOrderComponent,
    canActivate: [AuthGuard, RoleGuard],
    data: {
      routePermissionCode: "create order",
    },
  },
  {
    path: "edit-cartitem",
    component: CreateOrderComponent,
    canActivate: [AuthGuard, RoleGuard],
    data: {
      routePermissionCode: "create order",
    },
  },

  {
    path: "view-order",
    component: ViewOrderComponent,
    canActivate: [AuthGuard, RoleGuard],
    data: {
      routePermissionCode: "view order",
    },
  },
  {
    path: "print-order",
    component: PrintOrderComponent,
    canActivate: [AuthGuard, RoleGuard],
    data: {
      routePermissionCode: "print-order",
    },
  },
  {
    path: "shop",
    component: ShopComponent,
    data: {
      routePermissionCode: "ShopComponent",
    },
  },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class OrderRoutingModule {}
