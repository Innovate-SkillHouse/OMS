import { NgModule } from "@angular/core";
import { RouterModule, Routes } from "@angular/router";
import { AddShopComponent } from "./add-shop.component";
import { AuthGuard } from "../core/guards/auth.guard";
import { RoleGuard } from "../core/guards/role.guard";

const routes: Routes = [
  {
    path: "",
    component: AddShopComponent,
    canActivate: [AuthGuard, RoleGuard],
    data: {
      routePermissionCode: "add-shop",
    },
  },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class AddShopRoutingModule {}
