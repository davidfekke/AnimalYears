// https://github.com/Quick/Quick

import Quick
import Nimble
import AnimalYears

class TableOfContentsSpec: QuickSpec {
    override func spec() {
        describe("Dog Years tests") {

            it("Calculate Dog Years to human years") {
                let resultYear = Convert.calculate(dogyears: 10, weight: 25)
                expect(resultYear) == 58.48
            }
            
            it("Calculate Dog Years to human years for 1 and 78 lbs") {
                let resultYear = Convert.calculate(dogyears: 1, weight: 78)
                expect(resultYear) == 16.73
            }
        }
        
        describe("CatYears test") {
            
            it("Calculate Cat Years for a cat that is 10") {
                let result = Convert.calculate(catyears: 10)
                expect(result) == 57.0
            }
            
        }
    }
}
