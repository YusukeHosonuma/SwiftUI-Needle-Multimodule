//
//  File.swift
//  
//
//  Created by 細沼祐介 on 2022/02/25.
//

import Foundation

public protocol DetailBuilderProvidable {
    var builder: DetailBuilder { get }
}

struct DetailBuilderProvider: DetailBuilderProvidable {
    var builder: DetailBuilder
}
