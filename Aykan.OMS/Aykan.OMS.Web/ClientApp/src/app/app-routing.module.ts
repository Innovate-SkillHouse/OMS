import { NgModule } from "@angular/core";
import { Routes, RouterModule } from "@angular/router";
import { AuthGuard } from "./core/guards/auth.guard";
import { RoleGuard } from "./core/guards/role.guard";
const appRoutes: Routes = [
  {
    path: "login",
    loadChildren: () =>
      import("./login/login.module").then((m) => m.LoginModule),
  },
  {
    path: "registration",
    loadChildren: () =>
      import("./registration/registration.module").then(
        (m) => m.RegistrationModule
      ),
  },
  {
    path: "dashboard",
    loadChildren: () =>
      import("./dashboard/dashboard.module").then((m) => m.DashBoardModule),
    canActivate: [AuthGuard],
    data: {
      routePermissionCode: "dashboard",
    },
  },
  {
    path: "order",
    loadChildren: () =>
      import("./order/order.module").then((m) => m.OrderModule),
    canActivate: [AuthGuard, RoleGuard],
    data: {
      routePermissionCode: "order",
    },
  },
  {
    path: "add-shop",
    loadChildren: () =>
      import("./add-shop/add-shop.module").then((m) => m.AddShopModule),
    canActivate: [AuthGuard, RoleGuard],
    data: {
      routePermissionCode: "add-shop",
    },
  },
  {
    path: "edit-shop",
    loadChildren: () =>
      import("./edit-shop/edit-shop.module").then((m) => m.EditShopModule),
    canActivate: [AuthGuard, RoleGuard],
    data: {
      routePermissionCode: "edit-shop",
    },
  },
  {
    path: "view-shop",
    loadChildren: () =>
      import("./view-shop/view-shop.module").then((m) => m.ViewShopModule),
    canActivate: [AuthGuard, RoleGuard],
    data: {
      routePermissionCode: "view-shop",
    },
  },
  {
    path: "print-order",
    loadChildren: () =>
      import("./order/order.module").then((m) => m.OrderModule),
    canActivate: [AuthGuard, RoleGuard],
    data: {
      routePermissionCode: "print-order",
    },
  },
  {
    path: "",
    loadChildren: () =>
      import("./landing-page/landing-page.module").then(
        (m) => m.LandingPageModule
      ),
    data: {
      routePermissionCode: "landingpage",
    },
  },
];

@NgModule({
  imports: [RouterModule.forRoot(appRoutes)],
  exports: [RouterModule],
})
export class AppRoutingModule {}
