//
//  File.swift
//  
//
//  Created by 細沼祐介 on 2022/02/25.
//

import Foundation
import Domain

public protocol ListBuildable: Buildable where Input == Void {}
public protocol DetailBuildable: Buildable where Input == Item {}
