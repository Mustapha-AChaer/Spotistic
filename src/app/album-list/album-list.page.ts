import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, NavigationExtras, Router } from '@angular/router';
import { AlbumListService } from './album-list.service';
import { Album } from './album-list.service';
import { AlbumSongs } from './album-list.service';

@Component({
  selector: 'app-album-list',
  templateUrl: './album-list.page.html',
  styleUrls: ['./album-list.page.scss'],
})

export class AlbumListPage implements OnInit {

  private name: string;
  private imgUrl: string;
  private albums: Album[];
  private albumSongs: AlbumSongs[];
  constructor(private route:ActivatedRoute, private router: Router, private service: AlbumListService) { 
    this.route.queryParams.subscribe(params =>{
      if(params){
        this.name = params.artistName;
        this.imgUrl = params.imageUrl;
        this.getAlbums(this.name);
        console.log(this.name +  this.imgUrl);
      }
    })
  }

  ngOnInit() {  
  }

  getAlbums(name: string){
    return this.service.getAllAlbums(name).subscribe(response=>{
      this.albums = response;
      
    })
  }

  getAlbumSongs(albName: string){
    this.service.getAllAlbumSongs(albName).subscribe(response =>{
      this.albumSongs = response;
      console.log(this.albumSongs);
      document.getElementById("list").style.display ="none";
      document.getElementById("list2").style.display ="inline";

    })
  }

  

}
