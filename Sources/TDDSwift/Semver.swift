//
//  Semver.swift
//  TDDSwift
//
//  Created by nanashiki on 2019/04/05.
//

import Foundation

struct Semver: Equatable {
    let major: UInt
    let minor: UInt
    let patch: UInt
    
    var stringLiteral: String {
        return "\(major).\(minor).\(patch)"
    }
    
    public static func < (lhs: Semver, rhs: Semver) -> Bool {
        if lhs.major != rhs.major {
            return lhs.major < rhs.major
        }
        
        if lhs.minor != rhs.minor {
            return lhs.minor < rhs.minor
        }
        
        if lhs.patch != rhs.patch {
            return lhs.patch < rhs.patch
        }
        
        return false
    }
    
    public static func > (lhs: Semver, rhs: Semver) -> Bool {
        return lhs != rhs && !(lhs < rhs)
    }
}
