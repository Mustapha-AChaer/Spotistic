import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { AlbumListService } from './album-list.service';
import { Album } from './album-list.service';

@Component({
  selector: 'app-album-list',
  templateUrl: './album-list.page.html',
  styleUrls: ['./album-list.page.scss'],
})

export class AlbumListPage implements OnInit {

  private name: string;
  private imgUrl: string;
  private albums: Album[];
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

  

}
