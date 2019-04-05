import Nimble
import Quick
@testable import TDDSwift

class FizzBuzzTests: QuickSpec {
    override func spec() {
        describe("FizzBuzzのテスト") {
            var fizzBuzz: FizzBuzz!
            
            // 前準備
            beforeEach {
                fizzBuzz = FizzBuzz()
            }
            
            context("数字->文字のテスト") {
                it("1を渡すと文字列1を返す") {
                    expect(fizzBuzz.convert(i: 1)).to(equal("1"))
                }
                
                it("2を渡すと文字列2を返す") {
                    expect(fizzBuzz.convert(i: 2)).to(equal("2"))
                }
                
                context("3の倍数の時はFizzに変換する") {
                    it("3を渡すと文字列Fizzを返す") {
                        expect(fizzBuzz.convert(i: 3)).to(equal("Fizz"))
                    }
                }
                
                context("5の倍数の時はBuzzに変換する") {
                    it("5を渡すと文字列Buzzを返す") {
                        expect(fizzBuzz.convert(i: 5)).to(equal("Buzz"))
                    }
                }
                
                context("3の倍数かつ5の倍数の時はBuzzに変換する") {
                    it("15を渡すと文字列FizzBuzzを返す") {
                        expect(fizzBuzz.convert(i: 15)).to(equal("FizzBuzz"))
                    }
                }
            }
        }
    }
}
