import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { ArtistPagePage } from './artist-page.page';

const routes: Routes = [
  {
    path: '',
    component: ArtistPagePage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class ArtistPagePageRoutingModule {}
