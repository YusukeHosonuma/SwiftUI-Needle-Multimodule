//
//  AppApp.swift
//  App
//
//  Created by 細沼祐介 on 2022/02/25.
//

import SwiftUI
import NeedleFoundation
import Root

@main
struct AppApp: App {

    init() {
        registerProviderFactories()
    }
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
}
