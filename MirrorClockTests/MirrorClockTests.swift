import XCTest
@testable import MirrorClock

final class MirrorClockTests: XCTestCase {
    @MainActor
    func testContentViewCanBeCreated() {
        _ = ContentView()
    }
}
