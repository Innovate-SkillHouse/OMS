import { NgModule } from "@angular/core";
import { AddShopComponent } from "./add-shop.component";
import { AddShopRoutingModule } from "../add-shop/add-shop.routing.module";
import { SharedModule } from "../../app/shared/shared.module";

@NgModule({
  declarations: [AddShopComponent],
  imports: [AddShopRoutingModule, SharedModule],
  exports: [],
  providers: [],
})
export class AddShopModule {}
