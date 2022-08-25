import { NgModule } from "@angular/core";
import { OrderComponent } from "./order.component";
import { OrderRoutingModule } from "../order/order.routing.module";
import { CreateOrderComponent } from "./components/create-order/create-order.component";
import { ViewOrderComponent } from "./components/view-order/view-order.component";
import { CartComponent } from "../../app/order/components/cart/cart.component";
import { SharedModule } from "../../app/shared/shared.module";
import { PrintOrderComponent } from "./components/print-order/print-order.component";
@NgModule({
  declarations: [
    OrderComponent,
    CreateOrderComponent,
    ViewOrderComponent,
    CartComponent,
    PrintOrderComponent,
  ],
  imports: [OrderRoutingModule, SharedModule],
  exports: [],
  providers: [],
})
export class OrderModule {}
