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
import API
import List

public final class ListComponent: Component<ListDependency> {
    var listBuilder: ListBuilder {
        ListBuilder(dependency: dependency)
    }
}

public protocol ListDependency: Dependency {
    var caveAPI: CaveAPI { get }
    var detailBuilderProvider: DetailBuilderProvidable { get }
}

final class ListBuilder: Builder<ListDependency>, ListBuildable {
    func makeView(_ input: ()) -> some View {
        ListView(
            caveAPI: dependency.caveAPI,
            detailBuilder: dependency.detailBuilderProvider.builder
        )
    }
}
