//
//  File.swift
//  
//
//  Created by 細沼祐介 on 2022/02/25.
//

import Foundation
import Domain

public protocol CaveAPI {
    func fetch() async -> [Item]
}
