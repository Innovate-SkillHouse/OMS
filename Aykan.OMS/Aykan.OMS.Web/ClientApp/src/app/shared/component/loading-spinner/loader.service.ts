import { Injectable } from '@angular/core';
import { BehaviorSubject } from 'rxjs/internal/BehaviorSubject';

@Injectable()
export class LoaderService {
  private showCount = 0;
  public loader$: BehaviorSubject<boolean> = new BehaviorSubject<boolean>(
    false
  );

  toggleLoader() {
    this.loader$.next(this.loader$.getValue());
  }
  setLoader(isLoader: boolean) {
    if (isLoader) {
      this.showCount++;
    } else if (this.showCount > 0) {
      this.showCount--;
    }
    if (isLoader || this.showCount == 0) {
      this.loader$.next(isLoader);
    }
  }
}
