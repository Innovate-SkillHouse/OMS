import { NgModule } from "@angular/core";
import { CommonModule } from "@angular/common";

import { EditShopRoutingModule } from "./edit-shop-routing.module";
import { EditShopComponent } from "./edit-shop.component";
import { ReactiveFormsModule } from "@angular/forms";

@NgModule({
  declarations: [EditShopComponent],
  imports: [CommonModule, EditShopRoutingModule, ReactiveFormsModule],
})
export class EditShopModule {}
