import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { AlbumListService } from './album-list.service';

@Component({
  selector: 'app-album-list',
  templateUrl: './album-list.page.html',
  styleUrls: ['./album-list.page.scss'],
})

export class AlbumListPage implements OnInit {

  private name: string;
  private imgUrl: string;
  constructor(private route:ActivatedRoute, private router: Router, private service: AlbumListService) { 
    this.route.queryParams.subscribe(params =>{
      if(params){
        this.name = params.artistName;
        this.imgUrl = params.imageUrl;
        console.log(this.name +  this.imgUrl);
      }
    })
  }

  ngOnInit() {  }

}
