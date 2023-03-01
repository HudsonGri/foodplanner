import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable()
export class DataService {
  constructor(private http: HttpClient) {}

  addData(dataArray: any[]) {
    const url = 'https://reqres.in/api/users';
    return this.http.post(url, dataArray);
  }
}

// {
//   providedIn: 'root'
// }