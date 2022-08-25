import { NgModule } from "@angular/core";
import { CommonModule } from "@angular/common";

import { ViewShopRoutingModule } from "./view-shop-routing.module";
import { SharedModule } from "../shared/shared.module";
import { ViewShopComponent } from "../view-shop/view-shop.component";

@NgModule({
  declarations: [ViewShopComponent],
  imports: [CommonModule, ViewShopRoutingModule, SharedModule],
})
export class ViewShopModule {}
