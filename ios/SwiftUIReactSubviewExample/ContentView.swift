//
//  ContentView.swift
//  SwiftUIReactSubviewExample
//
//  Created by Daniel Boroujerdi on 24/05/2025.
//

import ReactAppDependencyProvider
import React_RCTAppDelegate
import SwiftData
import SwiftUI

struct ContentView: View {
    @State private var showReactNativeModal = false
    @EnvironmentObject var appDelegate: AppDelegate

    var body: some View {
        VStack {
            Button(action: { showReactNativeModal = true }) {
                Label("Open React Native", systemImage: "app")
            }
        }
        .sheet(
            isPresented: $showReactNativeModal,
            content: {
                ReactNativeView(
                    moduleName: "SwiftUIReactSubviewExample",
                    rootViewFactory: appDelegate.rootViewFactory()
                )
            }
        )
    }
}

#Preview {
    ContentView()
}
