import { Component, OnInit } from "@angular/core";
import { AuthenticationService } from "../core/services/authentication.service";
import { Router, ActivatedRoute } from "@angular/router";
@Component({
  selector: "app-landing-page",
  templateUrl: "./landing-page.component.html",
  styleUrls: ["./landing-page.component.css"],
})
export class LandingPageComponent implements OnInit {
  constructor(
    private authenticationService: AuthenticationService,
    private route: ActivatedRoute,
    private router: Router
  ) {
    if (this.authenticationService.currentUserValue) {
      this.router.navigate(["dashboard"]);
    }
  }

  ngOnInit() {}
}
