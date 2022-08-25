import { NgModule } from "@angular/core";
import { CommonModule } from "@angular/common";
import { FormsModule, ReactiveFormsModule } from "@angular/forms";
import { RouterModule } from "@angular/router";
import { NavMenuComponent } from "../nav-menu/nav-menu.component";
import { ShopComponent } from "../shop/shop.component";
import { LoaderService } from "../../app/shared/component/loading-spinner/loader.service";
import { HTTP_INTERCEPTORS } from "@angular/common/http";
import { JwtInterceptor } from "../core/interceptors/jwt.interceptor";
import { LoadingSpinnerComponent } from "../shared/component/loading-spinner/loading-spinner.component";
import { ConfirmationComponent } from "./component/confirmation/confirmation.component";
import { ChangePasswordComponent } from "./component/change-password/change-password.component";

var modules: any[] = [
  CommonModule,
  FormsModule,
  RouterModule,
  ReactiveFormsModule,
];

var declarations: any[] = [
  NavMenuComponent,
  ShopComponent,
  LoadingSpinnerComponent,
  ConfirmationComponent,
  ChangePasswordComponent,
];

@NgModule({
  declarations: [declarations],
  imports: [modules],
  exports: [modules, declarations],
  providers: [
    LoaderService,
    { provide: HTTP_INTERCEPTORS, useClass: JwtInterceptor, multi: true },
  ],
})
export class SharedModule {}
