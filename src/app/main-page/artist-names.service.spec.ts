import { TestBed } from '@angular/core/testing';

import { ArtistNamesService } from './artist-names.service';

describe('ArtistNamesService', () => {
  let service: ArtistNamesService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(ArtistNamesService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
