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

@MainActor
final class ListViewModel: ObservableObject {
    
    @Published var items: [Item] = []
    
    private let caveAPI: CaveAPI
    
    nonisolated init(caveAPI: CaveAPI) {
        self.caveAPI = caveAPI
    }
    
    func onAppear() async {
        items = await caveAPI.fetch()
    }
}
