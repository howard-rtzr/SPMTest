import XCTest
@testable import spmTest

final class spmTestTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        
        spmTest().sayHi { result in
            if result.isEmpty {
                XCTFail()
            }
        }
    }
}
