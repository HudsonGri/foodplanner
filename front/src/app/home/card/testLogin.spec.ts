import { ComponentFixture, TestBed, waitForAsync } from '@angular/core/testing';
import { HttpClientTestingModule, HttpTestingController } from '@angular/common/http/testing';
import { AuthService } from '@auth0/auth0-angular';
import { of } from 'rxjs';

import { CardComponent } from './card.component';

describe('CardComponent', () => {
  let component: CardComponent;
  let fixture: ComponentFixture<CardComponent>;
  let authServiceMock: Partial<AuthService>;
  let httpTestingController: HttpTestingController;

  beforeEach(waitForAsync(() => {
    authServiceMock = {
      user$: of({ email: 'test@example.com' })
    };

    TestBed.configureTestingModule({
      declarations: [ CardComponent ],
      imports: [ HttpClientTestingModule ],
      providers: [
        { provide: AuthService, useValue: authServiceMock }
      ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(CardComponent);
    component = fixture.componentInstance;
    httpTestingController = TestBed.inject(HttpTestingController);
  });

  it('should get user data on init', () => {
    component.ngOnInit();

    const req = httpTestingController.expectOne('http://localhost:8080/users/test@example.com');
    expect(req.request.method).toEqual('GET');

    const mockData = { data: { name: 'John Doe' } };
    req.flush(mockData);

    expect(component.responseUserData).toEqual(mockData.data);
  });

  afterEach(() => {
    httpTestingController.verify();
  });
});
