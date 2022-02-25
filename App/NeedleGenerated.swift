

import API
import Core
import Detail
import Domain
import Foundation
import List
import NeedleFoundation
import SwiftUI
import Root

// swiftlint:disable unused_declaration
private let needleDependenciesHash : String? = nil

// MARK: - Registration

public func registerProviderFactories() {
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: "^->RootComponent->ListComponent") { component in
        return ListDependency9c2f5b85fb6808210ea1Provider(component: component)
    }
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: "^->RootComponent->DetailComponent") { component in
        return EmptyDependencyProvider(component: component)
    }
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: "^->RootComponent") { component in
        return EmptyDependencyProvider(component: component)
    }
    
}

// MARK: - Providers

private class ListDependency9c2f5b85fb6808210ea1BaseProvider: ListDependency {
    var caveAPI: CaveAPI {
        return rootComponent.caveAPI
    }
    var detailBuilderProvider: DetailBuilderProvidable {
        return rootComponent.detailBuilderProvider
    }
    private let rootComponent: RootComponent
    init(rootComponent: RootComponent) {
        self.rootComponent = rootComponent
    }
}
/// ^->RootComponent->ListComponent
private class ListDependency9c2f5b85fb6808210ea1Provider: ListDependency9c2f5b85fb6808210ea1BaseProvider {
    init(component: NeedleFoundation.Scope) {
        super.init(rootComponent: component.parent as! RootComponent)
    }
}
