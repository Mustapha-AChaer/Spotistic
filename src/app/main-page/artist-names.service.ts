import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

export interface Singer{
  id: string,
  name: string,
  monthOfBirth: string,
  monthlyListerns: number,
  nationality: string
}
@Injectable({
  providedIn: 'root'
})
export class ArtistNamesService {

  private base_url ='http://localhost/FinalMobileProject/getAllSingers.php'

  constructor(private http : HttpClient) {
   }
   public getAllSingers(){
      return this.http.get<[Singer]>(this.base_url);
    }
}
