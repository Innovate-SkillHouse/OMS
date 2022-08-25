import { NgModule } from "@angular/core";
import { HttpClientModule, HTTP_INTERCEPTORS } from "@angular/common/http";
import { ErrorInterceptor } from "./interceptor/error.interceptor";
import { CanDeactivateGuard } from "./guards/deactivate.guard";

@NgModule({
  declarations: [],
  imports: [HttpClientModule],
  providers: [
    // { provide: HTTP_INTERCEPTORS, useClass: JwtInterceptor, multi: true },
    { provide: HTTP_INTERCEPTORS, useClass: ErrorInterceptor, multi: true },
    CanDeactivateGuard,
  ],
})
export class CoreModule {}
