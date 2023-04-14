import { ComponentFixture, TestBed } from '@angular/core/testing';

import { BackendUserRequestComponent } from './backend-user-request.component';

describe('BackendUserRequestComponent', () => {
  let component: BackendUserRequestComponent;
  let fixture: ComponentFixture<BackendUserRequestComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ BackendUserRequestComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(BackendUserRequestComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
