import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';



export interface User{
  id?: string,
  email: string,
  password: string,
};

export interface Resp{
  response: string,
}

@Injectable({
  providedIn: 'root'
})


export class LoginService {

  private base_url = "http://localhost/FinalMobileProject/"

  constructor(private http : HttpClient) { }

  sendInfo(user: User){
    return this.http.post<[Resp]>(this.base_url + 'createAccount/signin.php', user);
  }
}
