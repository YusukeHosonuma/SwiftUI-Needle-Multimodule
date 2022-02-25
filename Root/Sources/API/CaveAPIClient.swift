//
//  File.swift
//  
//
//  Created by 細沼祐介 on 2022/02/25.
//

import Foundation
import Core
import Domain

private let items: [Item] = [
    Item(title: "怒首領蜂", message: "死ぬがよい。"),
    Item(title: "怒首領蜂大復活", message: "いよいよもって死ぬがよい。そしてさようなら。"),
]

final public class CaveAPIClient: CaveAPI {
    public init() {}
    
    public func fetch() async -> [Item] {
        do {
            try await Task.sleep(nanoseconds: 1 * 1000 * 1000 * 1000)
        } catch {
            return []
        }
        return items
    }
}
