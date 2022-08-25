import { Component, OnInit, Input } from "@angular/core";
import { LoaderService } from "./loader.service";
import { debounceTime } from "rxjs/operators";

@Component({
  selector: "loading-spinner",
  templateUrl: "./loading-spinner.component.html",
  styleUrls: ["./loading-spinner.component.css"],
})
export class LoadingSpinnerComponent implements OnInit {
  @Input() isLoading = true;
  constructor(public loaderService: LoaderService) {}

  ngOnInit() {
    this.loaderService.loader$.pipe(debounceTime(10)).subscribe((d) => {
      // console.log("spinner", d);
      this.isLoading = d;
    });
  }
}
