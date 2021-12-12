import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

export interface Album{
  albumName: string
}

export interface ArtistName{
  artistName: string
}
@Injectable({
  providedIn: 'root'
})
export class AlbumListService {

  private artist: ArtistName;
  private base_url ='http://localhost/FinalMobileProject/getAllAlbums.php'

  constructor(private http : HttpClient) { }

  getAllAlbums(naming: string){
    this.artist = {
      artistName: naming
    }
    return this.http.post<[Album]>(this.base_url, this.artist);
  }
 
}
