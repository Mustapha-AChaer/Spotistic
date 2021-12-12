import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

export interface Album{
  albumName: string
}

export interface ArtistName{
  artistName: string
}

export interface AlbumSongs{
  songName: string
}
@Injectable({
  providedIn: 'root'
})
export class AlbumListService {

  private artist: ArtistName;
  private album: Album;
  private base_url ='http://localhost/FinalMobileProject/'

  constructor(private http : HttpClient) { }

  getAllAlbums(naming: string){
    this.artist = {
      artistName: naming
    }
    return this.http.post<[Album]>(this.base_url + "getAllAlbums.php", this.artist);
  }

  getAllAlbumSongs(albName: string){
    this.album = {
      albumName : albName
    }
    return this.http.post<[AlbumSongs]>(this.base_url + "getAllAlbumSongs.php", this.album);
  }
 
}
