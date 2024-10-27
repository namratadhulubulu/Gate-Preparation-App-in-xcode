//
//  AuthenticationApp.swift
//  Authentication
//
//  Created by AL3 on 04/03/24.
//

import SwiftUI
import Firebase

@main
struct AuthenticationApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    print("Firebase Configured")
    return true
  }
}


