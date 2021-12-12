import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';


export interface User{
  id? : string,
  name: string,
  email: string,
  password: string
}
@Injectable({
  providedIn: 'root'
})
export class SignupService {

  private base_url = "http://localhost/FinalMobileProject/"
  constructor(private http : HttpClient) { }

  createUser(user: User){
    return this.http.post<[User]>(this.base_url + 'createAccount/signup.php', user);
  }
}
