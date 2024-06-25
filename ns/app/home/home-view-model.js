import { Observable, ObservableArray } from '@nativescript/core'
import { FlickService } from '../services/flick.service'

// Add the contents of HomeViewModel class 👇
export class HomeViewModel extends Observable {
  // #flicks;
  _flicks;

  constructor() {
    super()
    this.populateFlicks()
  }

  // this will be used as the data source of our ListView
  get flicks() {
    return new ObservableArray(this._flicks)
  }

  populateFlicks() {
    this._flicks = FlickService.getInstance().getFlicks()
  }
}