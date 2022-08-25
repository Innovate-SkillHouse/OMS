import { NgModule } from "@angular/core";
import { LandingPageComponent } from "./landing-page.component";
import { LandingPageRoutingModule } from "../landing-page/landing-page.routing.module";
@NgModule({
  declarations: [LandingPageComponent],
  imports: [LandingPageRoutingModule],
  exports: [],
  providers: [],
})
export class LandingPageModule {}
