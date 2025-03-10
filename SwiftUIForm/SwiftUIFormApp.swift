//
//  SwiftUIFormApp.swift
//  SwiftUIForm
//
//  Created by Simon Ng on 19/8/2020.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    //FirebaseApp.configure()
    return true
  }
}

@main
struct SwiftUIFormApp: App {
    
    // register app delegate for Firebase setup
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var dB = FirebaseApp.configure()
    
    var settingStore = SettingStore()
    var viewModel = RestaurantViewModel(settingStore: SettingStore())
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: viewModel).environmentObject(settingStore)
        }
    }
}
