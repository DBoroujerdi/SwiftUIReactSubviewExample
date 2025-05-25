//
//  AppDelegate.swift
//  SwiftUIReactSubviewExample
//
//  Created by Daniel Boroujerdi on 24/05/2025.
//

import UIKit
import React
import React_RCTAppDelegate
import SwiftUI

class AppDelegate: RCTAppDelegate, ObservableObject {
    
    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        self.automaticallyLoadReactNativeWindow = false

        return super.application(
            application,
            didFinishLaunchingWithOptions: launchOptions
        )
    }
    
    override func sourceURL(for bridge: RCTBridge) -> URL? {
        let url = self.bundleURL()
        print(url?.absoluteString ?? "no url")
        return url
    }

    override func bundleURL() -> URL? {
#if DEBUG
        RCTBundleURLProvider
            .sharedSettings()
            .jsBundleURL(forBundleRoot: "index")
#else
        Bundle.main.url(forResource: "main", withExtension: "jsbundle")
#endif
    }
}

