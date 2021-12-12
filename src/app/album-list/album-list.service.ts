import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';


@Injectable({
  providedIn: 'root'
})
export class AlbumListService {

  private base_url ='http://localhost/FinalMobileProject/getAllAlbums.php'

  constructor(private http : HttpClient) { }

 
}
