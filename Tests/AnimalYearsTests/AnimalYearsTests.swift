import XCTest
@testable import AnimalYears

final class AnimalYearsTests: XCTestCase {
//    func testExample() throws {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct
//        // results.
//        XCTAssertEqual(AnimalYears().text, "Hello, World!")
//    }
    
    func testCalculateDogYearstohumanyears() throws {
        let resultYear = Convert.calculate(dogyears: 10, weight: 25)
        XCTAssertEqual(resultYear, 58.48345)
        
    }
    
    func testCalculateDogYearstohumanyearsfor1and78lbs() throws {
        let resultYear = Convert.calculate(dogyears: 1, weight: 78)
        XCTAssertEqual(resultYear, 16.729595)
    }
    
    func testCaluclateCatYears() throws {
        let result = Convert.calculate(catyears: 10)
        XCTAssertEqual(result, 57.0)
    }
}
