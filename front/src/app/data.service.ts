import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable()
export class DataService {
  constructor(private http: HttpClient) {}

  savePreferences(dataArray: any[]) {
    const url = 'https://reqres.in/api/preferences';
    return this.http.post(url, dataArray);
  }
}

// {
//   providedIn: 'root'
// }