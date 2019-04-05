//
//  SemverTests.swift
//  TDDSwiftTests
//
//  Created by nanashiki on 2019/04/05.
//

import Nimble
import Quick
@testable import TDDSwift
import Foundation

class SemverTests: QuickSpec {
    override func spec() {
        describe("Semverのテスト") {
            describe("プロパティのテスト") {
                context("1.2.3") {
                    let semver = Semver(major: 1, minor: 2, patch: 3)
                    it("正しいmajor(1)を返す") {
                        expect(semver.major).to(equal(1))
                    }
                    it("正しいminor(2)を返す") {
                        expect(semver.minor).to(equal(2))
                    }
                    it("正しいpatch(3)を返す") {
                        expect(semver.patch).to(equal(3))
                    }
                }
            }
            
            describe("バージョン文字列を返すテスト") {
                context("1.2.3") {
                    let semver = Semver(major: 1, minor: 2, patch: 3)
                    it("1.2.3の文字列を返す") {
                        expect(semver.stringLiteral).to(equal("1.2.3"))
                    }
                }
            }
            
            describe("等価性比較を行うテスト") {
                context("等しい場合") {
                    let lhs = Semver(major: 1, minor: 2, patch: 3)
                    let rhs = Semver(major: 1, minor: 2, patch: 3)
                    expect(lhs == rhs).to(equal(true))
                }
                
                context("majorが等しくない場合") {
                    let lhs = Semver(major: 1, minor: 2, patch: 3)
                    let rhs = Semver(major: 0, minor: 2, patch: 3)
                    expect(lhs != rhs).to(equal(true))
                }
                
                context("minorが等しくない場合") {
                    let lhs = Semver(major: 1, minor: 2, patch: 3)
                    let rhs = Semver(major: 1, minor: 0, patch: 3)
                    expect(lhs != rhs).to(equal(true))
                }

                context("patchが等しくない場合") {
                    let lhs = Semver(major: 1, minor: 2, patch: 3)
                    let rhs = Semver(major: 1, minor: 2, patch: 0)
                    expect(lhs != rhs).to(equal(true))
                }

            }
            
            describe("大なりをテストする") {
                context("majorのみ比較") {
                    let largeVersion = Semver(major: 2, minor: 2, patch: 3)
                    let smallVersion = Semver(major: 1, minor: 2, patch: 3)
                    
                    it("trueを返す") {
                        expect(largeVersion > smallVersion).to(equal(true))
                    }
                    
                    it("falseを返す") {
                        expect(smallVersion > largeVersion).to(equal(false))
                    }
                }
                
                context("minorのみ比較") {
                    let largeVersion = Semver(major: 1, minor: 2, patch: 3)
                    let smallVersion = Semver(major: 1, minor: 1, patch: 3)
                    
                    it("trueを返す") {
                        expect(largeVersion > smallVersion).to(equal(true))
                    }
                    
                    it("falseを返す") {
                        expect(smallVersion > largeVersion).to(equal(false))
                    }
                }
                
                context("patchのみ比較") {
                    let largeVersion = Semver(major: 1, minor: 2, patch: 3)
                    let smallVersion = Semver(major: 1, minor: 2, patch: 2)
                    
                    it("trueを返す") {
                        expect(largeVersion > smallVersion).to(equal(true))
                    }
                    
                    it("falseを返す") {
                        expect(smallVersion > largeVersion).to(equal(false))
                    }
                }
                
                context("等しい場合") {
                    let lhs = Semver(major: 1, minor: 2, patch: 3)
                    let rhs = Semver(major: 1, minor: 2, patch: 3)
                    expect(lhs > rhs).to(equal(false))
                }
            }
            
            describe("小なりをテストする") {
                context("majorのみ比較") {
                    let largeVersion = Semver(major: 2, minor: 2, patch: 3)
                    let smallVersion = Semver(major: 1, minor: 2, patch: 3)
                    
                    it("trueを返す") {
                        expect(smallVersion < largeVersion).to(equal(true))
                    }
                    
                    it("falseを返す") {
                        expect(largeVersion < smallVersion).to(equal(false))
                    }
                }
                
                context("minorのみ比較") {
                    let largeVersion = Semver(major: 1, minor: 2, patch: 3)
                    let smallVersion = Semver(major: 1, minor: 1, patch: 3)
                    
                    it("trueを返す") {
                        expect(smallVersion < largeVersion).to(equal(true))
                    }
                    
                    it("falseを返す") {
                        expect(largeVersion < smallVersion).to(equal(false))
                    }
                }
                
                context("patchのみ比較") {
                    let largeVersion = Semver(major: 1, minor: 2, patch: 3)
                    let smallVersion = Semver(major: 1, minor: 2, patch: 2)
                    
                    it("trueを返す") {
                        expect(smallVersion < largeVersion).to(equal(true))
                    }
                    
                    it("falseを返す") {
                        expect(largeVersion < smallVersion).to(equal(false))
                    }
                }
                
                context("等しい場合") {
                    let lhs = Semver(major: 1, minor: 2, patch: 3)
                    let rhs = Semver(major: 1, minor: 2, patch: 3)
                    expect(lhs < rhs).to(equal(false))
                }
            }
        }
            
    }
}

