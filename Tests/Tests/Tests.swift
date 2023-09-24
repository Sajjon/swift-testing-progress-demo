import Testing


@Suite("Passing")
struct PassingTests {
  
  @Test
  func delay_1s() async throws {
    try await Task.sleep(for: .seconds(1))
    #expect(Bool(true))
  }
  
  @Test
  func delay_3s() async throws {
    try await Task.sleep(for: .seconds(3))
    #expect(Bool(true))
  }
  
  
  @Test
  func delay_7s() async throws {
    try await Task.sleep(for: .seconds(7))
    #expect(Bool(true))
  }
}

