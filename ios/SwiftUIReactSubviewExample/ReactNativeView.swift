//
//  ReactNativeView.swift
//  SwiftUIReactSubviewExample
//
//  Created by Daniel Boroujerdi on 25/05/2025.
//

import SwiftUI
import React
import React_RCTAppDelegate

struct ReactNativeView: UIViewRepresentable {
  var moduleName: String
  var rootViewFactory: RCTRootViewFactory
  
  func makeUIView(context: Context) -> UIView {
    
    return rootViewFactory.view(withModuleName: moduleName)
  }
  
  func updateUIView(_ uiView: UIView, context: Context) {
    // noop
  }
}
