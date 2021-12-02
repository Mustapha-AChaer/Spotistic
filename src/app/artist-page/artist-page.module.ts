import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { ArtistPagePageRoutingModule } from './artist-page-routing.module';

import { ArtistPagePage } from './artist-page.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    ArtistPagePageRoutingModule
  ],
  declarations: [ArtistPagePage]
})
export class ArtistPagePageModule {}
