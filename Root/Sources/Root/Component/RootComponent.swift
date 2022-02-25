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

public final class RootComponent: BootstrapComponent {

    public func makeView() -> some View {
        listComponent.listBuilder.makeView(())
    }
    
    // Global objects
    
    public var caveAPI: CaveAPI {
        CaveAPIClient()
    }
    
    // Builder provider
    
    public var detailBuilderProvider: DetailBuilderProvidable {
        shared {
            DetailBuilderProvider(builder: detailComponent.detailBuilder)
        }
    }
    
    // Chiild components
    
    public var listComponent: ListComponent {
        ListComponent(parent: self)
    }
    
    public var detailComponent: DetailComponent {
        DetailComponent(parent: self)
    }
}
