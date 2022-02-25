//
//  ContentView.swift
//  App
//
//  Created by 細沼祐介 on 2022/02/25.
//

import SwiftUI
import NeedleFoundation

public struct RootView: View {
    var component: RootComponent

    public init() {
        self.component = RootComponent()
    }
    
    public var body: some View {
        component.makeView()
    }
}
