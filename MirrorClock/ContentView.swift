import SwiftUI

struct ContentView: View {
    @AppStorage("mirrorModeEnabled") private var isMirrorModeEnabled = false

    var body: some View {
        ClockScreen(isMirrorModeEnabled: $isMirrorModeEnabled)
    }
}

struct ClockScreen: View {
    @Binding var isMirrorModeEnabled: Bool

    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()

            VStack(spacing: 32) {
                Spacer()

                TimelineView(.periodic(from: .now, by: 1)) { context in
                    TimeDisplay(
                        date: context.date,
                        isMirrored: isMirrorModeEnabled
                    )
                }

                Spacer()

                Picker("Display Mode", selection: $isMirrorModeEnabled) {
                    Text("Normal")
                        .tag(false)
                    Text("Mirror")
                        .tag(true)
                }
                .pickerStyle(.segmented)
                .accessibilityLabel("Mirror Mode")
                .accessibilityValue(isMirrorModeEnabled ? "Mirror" : "Normal")
                .accessibilityIdentifier("mirrorModePicker")
                .padding(.horizontal)
                .padding(.bottom)
            }
        }
    }
}

struct TimeDisplay: View {
    let date: Date
    let isMirrored: Bool

    var body: some View {
        Text(date, format: .dateTime.hour().minute())
            .font(.system(size: 96, weight: .medium))
            .monospacedDigit()
            .foregroundStyle(.white)
            .lineLimit(1)
            .minimumScaleFactor(0.5)
            .padding()
            .scaleEffect(x: isMirrored ? -1 : 1, y: 1)
            .accessibilityLabel(
                "Current time, \(date.formatted(date: .omitted, time: .shortened))"
            )
            .accessibilityIdentifier("timeDisplay")
    }
}
