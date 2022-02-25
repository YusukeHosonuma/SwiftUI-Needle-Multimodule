//
//  File.swift
//  
//
//  Created by 細沼祐介 on 2022/02/25.
//

import Foundation
import SwiftUI
import Core
import Domain

public struct DetailView: View {
    private let item: Item
    
    public init(item: Item) {
        self.item = item
    }
    
    public var body: some View {
        Text(item.message)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(item: Item(title: "怒首領蜂", message: "死ぬがよい。"))
                .navigationBarTitle("怒首領蜂")
        }
    }
}
