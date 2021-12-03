import { Component, OnInit } from '@angular/core';
import { NavigationExtras, Router } from '@angular/router';
import { Singer, ArtistNamesService } from './artist-names.service';

@Component({
  selector: 'app-main-page',
  templateUrl: './main-page.page.html',
  styleUrls: ['./main-page.page.scss'],
})
export class MainPagePage implements OnInit {
  singers: Singer[];

  constructor(private router: Router,private service: ArtistNamesService) {
   }

  ngOnInit() {
    this.service.getAllSingers().subscribe(response =>{
      this.singers = response;
      console.log(this.singers);
    });
  }

  sendWithQuery(name, imgurl){
    
    let navExtra:NavigationExtras = {
      queryParams: {
        artistName: name,
        imageUrl: imgurl
      }
    }

    this.router.navigate(['/album-list'],navExtra )
  }

}
