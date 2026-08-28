# Mirror Clock

Mirror Clock is a small SwiftUI clock app for iPhone. Phase 1 establishes a reproducible local development baseline; mirror display and settings are intentionally deferred.

## Requirements

- macOS with Xcode 26.6 or a compatible later release
- iOS 18.0 or later

## Build

```sh
DEVELOPER_DIR=/Applications/Xcode.app/Contents/Developer \
  xcodebuild \
  -project MirrorClock.xcodeproj \
  -scheme MirrorClock \
  -destination 'generic/platform=iOS Simulator' \
  build
```

## Project status

The bootstrap UI displays the current time on a black background. Mirror mode, settings, format controls, orientation optimization, idle-timer handling, and localization are outside Phase 1.

## Documentation

Formal product and design documents will be synchronized from the existing ChatGPT drafts in a later step. See `docs/` for placeholders.

## License

MIT. See `LICENSE`.
