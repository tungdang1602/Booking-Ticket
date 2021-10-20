import { TestBed } from '@angular/core/testing';

import { CinemaComplexService } from './cinema-complex.service';

describe('CinemaComplexService', () => {
  let service: CinemaComplexService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(CinemaComplexService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
