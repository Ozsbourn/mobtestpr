import { Application } from '@nativescript/core'

import { BrowseViewModel } from './browse-view-model'

export function onNavigatingTo(args) {
  const page = args.object
  page.bindingContext = new BrowseViewModel()

  // let insideBox = page.getViewById("inside-box");
  // insideBox.animate({
  //     translate: { x: 1, y: 20 },
  //     duration: 1000,
  //     scale: { x: 3, y: 3 },
  //     opacity: 1
  // });
}

export function onDrawerButtonTap(args) {
  const sideDrawer = Application.getRootView()
  sideDrawer.showDrawer()
}

