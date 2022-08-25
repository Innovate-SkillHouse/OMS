import { Injectable } from "@angular/core";
import { HttpClient, HttpParams } from "@angular/common/http";
import { Observable } from "rxjs";

@Injectable({ providedIn: "root" })
export class CommonService {
  public appTimeZone: string;

  constructor(private http: HttpClient) {}

  getHttpParams(mapParams: Map<string, string>): HttpParams {
    let params = new HttpParams();
    for (let param of mapParams.entries()) {
      if (param[1] && param[1] !== null) {
        params = params.append(param[0], param[1]);
      }
    }
    return params;
  }
}
