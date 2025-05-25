//
//  SwiftUIReactSubviewExampleApp.swift
//  SwiftUIReactSubviewExample
//
//  Created by Daniel Boroujerdi on 24/05/2025.
//

import SwiftUI

@main
struct SwiftUIReactSubviewExampleApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .environmentObject(appDelegate)
    }
}
