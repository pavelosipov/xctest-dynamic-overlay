import XCTestDynamicOverlay

func MyXCTFail(_ message: String) {
  XCTFail(message)
}

struct Client {
  var p00: () -> Int
  var p01: () throws -> Int
  var p04: (Int) -> Int
  var p05: (Int) throws -> Int
  var p08: (Int, Int) -> Int
  var p09: (Int, Int) throws -> Int
  var p12: (Int, Int, Int) -> Int
  var p13: (Int, Int, Int) throws -> Int
  var p16: (Int, Int, Int, Int) -> Int
  var p17: (Int, Int, Int, Int) throws -> Int
  var p20: (Int, Int, Int, Int, Int) -> Int
  var p21: (Int, Int, Int, Int, Int) throws -> Int

  static var unimplemented: Self {
    Self(
      p00: XCTUnimplemented("\(Self.self).p00"),
      p01: XCTUnimplemented("\(Self.self).p01"),
      p04: XCTUnimplemented("\(Self.self).p04"),
      p05: XCTUnimplemented("\(Self.self).p05"),
      p08: XCTUnimplemented("\(Self.self).p08"),
      p09: XCTUnimplemented("\(Self.self).p09"),
      p12: XCTUnimplemented("\(Self.self).p12"),
      p13: XCTUnimplemented("\(Self.self).p13"),
      p16: XCTUnimplemented("\(Self.self).p16"),
      p17: XCTUnimplemented("\(Self.self).p17"),
      p20: XCTUnimplemented("\(Self.self).p20"),
      p21: XCTUnimplemented("\(Self.self).p21")
    )
  }
}
