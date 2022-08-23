import XCTest

final class XCTestDynamicOverlayTests: XCTestCase {
  func testXCTFail() throws {
    MyXCTFail("This is expected to fail!")
  }
}
