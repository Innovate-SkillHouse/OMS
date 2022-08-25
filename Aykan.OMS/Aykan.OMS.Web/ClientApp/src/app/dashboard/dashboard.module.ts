import { NgModule } from "@angular/core";
import { DashboardComponent } from "./dashboard.component";
import { DashboardRoutingModule } from "./dashboard.routing.module";
import { CommonModule } from "@angular/common";
import { BrowserModule } from "@angular/platform-browser";
import { SharedModule } from "../../app/shared/shared.module";
@NgModule({
  declarations: [DashboardComponent],
  imports: [DashboardRoutingModule, CommonModule, SharedModule],
  exports: [],
  providers: [],
})
export class DashBoardModule {}
