import { Component } from '@angular/core';

interface Card {
  title: string;
  description: string;
}

@Component({
  selector: 'app-search',
  templateUrl: './search.component.html',
  styleUrls: ['./search.component.css']
})
export class SearchComponent {
  cards: Card[] = [
    {
      title: 'Card 1',
      description: 'This is the first card.'
    },
    {
      title: 'Card 2',
      description: 'This is the second card.'
    },
    {
      title: 'Card 3',
      description: 'This is the third card.'
    }
  ];
}
