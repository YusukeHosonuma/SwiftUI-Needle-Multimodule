//
//  File.swift
//  
//
//  Created by 細沼祐介 on 2022/02/25.
//

import Foundation
import SwiftUI
import Domain

open class Builder<Dependency> {
    public let dependency: Dependency
    
    public init(dependency: Dependency) {
        self.dependency = dependency
    }
}
