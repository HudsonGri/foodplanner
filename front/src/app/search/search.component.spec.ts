// import { ComponentFixture, TestBed } from '@angular/core/testing';

// import { SearchComponent } from './search.component';

// describe('SearchComponent', () => {
//   let component: SearchComponent;
//   let fixture: ComponentFixture<SearchComponent>;

//   beforeEach(async () => {
//     await TestBed.configureTestingModule({
//       declarations: [ SearchComponent ]
//     })
//     .compileComponents();

//     fixture = TestBed.createComponent(SearchComponent);
//     component = fixture.componentInstance;
//     fixture.detectChanges();
//   });

//   it('should create', () => {
//     expect(component).toBeTruthy();
//   });
// });

import { ComponentFixture, TestBed } from '@angular/core/testing';
import { SearchComponent } from './search.component';

describe('TestSearchComponentCard', () => {
  let component: SearchComponent;
  let fixture: ComponentFixture<SearchComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ SearchComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(SearchComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should call cardClicked function on click', () => {
    spyOn(component, 'cardClicked');
    const card = fixture.nativeElement.querySelector('.card');
    card.dispatchEvent(new Event('click'));
    expect(component.cardClicked).toHaveBeenCalled();
  });
});