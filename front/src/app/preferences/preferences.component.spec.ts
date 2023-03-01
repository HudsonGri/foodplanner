//import { ComponentFixture, TestBed } from '@angular/core/testing';

// import { PreferencesComponent } from './preferences.component';

// describe('PreferencesComponent', () => {
//   let component: PreferencesComponent;
//   let fixture: ComponentFixture<PreferencesComponent>;

//   beforeEach(async () => {
//     await TestBed.configureTestingModule({
//       declarations: [ PreferencesComponent ]
//     })
//     .compileComponents();

//     fixture = TestBed.createComponent(PreferencesComponent);
//     component = fixture.componentInstance;
//     fixture.detectChanges();
//   });

//   it('should create', () => {
//     expect(component).toBeTruthy();
//   });
// });

import { HttpClientTestingModule, HttpTestingController } from '@angular/common/http/testing';
import { ComponentFixture, TestBed } from '@angular/core/testing';
import { HttpClient } from '@angular/common/http';

import { PreferencesComponent } from './preferences.component';

describe('TestSavePreferences', () => {
  let component: PreferencesComponent;
  let httpMock: HttpTestingController;
  let httpClient: HttpClient;

  beforeEach(() => {
    TestBed.configureTestingModule({
      imports: [ HttpClientTestingModule ],
      providers: [ PreferencesComponent ]
    });

    component = TestBed.inject(PreferencesComponent);
    httpMock = TestBed.inject(HttpTestingController);
    httpClient = TestBed.inject(HttpClient);
  });

  afterEach(() => {
    httpMock.verify();
  });

  it('should send boolean values to the backend', () => {
    const preferences = [
      { name: 'allergies', value: true },
      { name: 'vegetarian', value: false },
      { name: 'vegan', value: true }
    ];

    component.allergies = true;
    component.vegetarian = false;
    component.vegan = true;

    const url = 'https://reqres.in/api/users';
    const req = httpMock.expectOne(url);
    expect(req.request.method).toEqual('POST');
    expect(req.request.body).toEqual(preferences);

    req.flush({}); // mock response

    expect(console.log).toHaveBeenCalledWith('Boolean values saved successfully');
  });

  it('should handle errors when sending boolean values to the backend', () => {
    component.allergies = true;
    component.vegetarian = false;
    component.vegan = true;

    const url = 'https://reqres.in/api/users';
    const errorMessage = 'Something went wrong!';
    const err = new ErrorEvent('ERROR', {
      error: new Error(errorMessage),
      message: errorMessage
    });

    const req = httpMock.expectOne(url);
    req.error(err);

    expect(console.error).toHaveBeenCalledWith('Error saving boolean values:', err);
  });
});

