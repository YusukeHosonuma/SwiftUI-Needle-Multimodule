//
//  File.swift
//  
//
//  Created by 細沼祐介 on 2022/02/25.
//

import Foundation
import NeedleFoundation
import SwiftUI
import Core
import Domain
import Detail

// 📦 Detail

public typealias DetailDependency = EmptyDependency

public final class DetailComponent: Component<EmptyDependency> {
    var detailBuilder: DetailBuilder {
        DetailBuilder(dependency: dependency)
    }
}

public final class DetailBuilder: Builder<DetailDependency>, DetailBuildable {
    public func makeView(_ item: Item) -> some View {
        DetailView(item: item)
    }
}

