import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { AuthGuard } from '../core/guards/auth.guard';
import { RoleGuard } from '../core/guards/role.guard';
import { EditShopComponent } from './edit-shop.component';

const routes: Routes = [
  {
    path: "",
    component: EditShopComponent,
    canActivate: [AuthGuard, RoleGuard],
    data: {
      routePermissionCode: "edit-shop",
    },
  },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class EditShopRoutingModule { }
