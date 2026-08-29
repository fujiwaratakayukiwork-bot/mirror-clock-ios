import SwiftUI
import XCTest
@testable import MirrorClock

final class MirrorClockTests: XCTestCase {
    @MainActor
    func testContentViewCanBeCreated() {
        _ = ContentView()
    }

    @MainActor
    func testClockScreenCanBeCreatedInNormalAndMirrorModes() {
        _ = ClockScreen(isMirrorModeEnabled: .constant(false))
        _ = ClockScreen(isMirrorModeEnabled: .constant(true))
    }

    @MainActor
    func testTimeDisplayCanBeCreatedInNormalAndMirrorModes() {
        let date = Date(timeIntervalSince1970: 0)

        _ = TimeDisplay(date: date, isMirrored: false)
        _ = TimeDisplay(date: date, isMirrored: true)
    }
}
