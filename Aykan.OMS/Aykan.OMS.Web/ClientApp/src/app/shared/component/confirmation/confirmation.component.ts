import {
  Component,
  OnInit,
  Input,
  Output,
  EventEmitter,
  ViewChild,
} from "@angular/core";

@Component({
  selector: "app-confirmation",
  templateUrl: "./confirmation.component.html",
  styleUrls: ["./confirmation.component.css"],
})
export class ConfirmationComponent implements OnInit {
  @Input() confirmationMessage: string;
  @Output() confirm = new EventEmitter();
  constructor() {}

  ngOnInit() {}
  confirmSubmit() {
    this.confirm.emit();
  }
}
