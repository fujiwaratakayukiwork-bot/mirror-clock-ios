# Mirror Clock

**Status:** Early development

Mirror Clockは、鏡越しに正しい向きで時刻を確認するための、シンプルなiPhone向けデジタル時計アプリです。

## Core Concept

> 鏡越しに、正しい向きで時刻を見るためのシンプルなデジタル時計。

## Technology

- iPhone / iOS 18.0+
- Swift
- SwiftUI
- Xcode
- Third-party dependencyなし
- Backend・Network機能なし

## Development Approach

- SwiftUI first
- Apple標準APIを優先
- 小規模アプリに過剰なArchitectureを導入しない
- Stateは可能な限り所有Viewの近くに置く
- Git / GitHubとCodexを利用した、検証可能なAI-assisted development
- 公開Repositoryとして読みやすく、再現可能な開発履歴を残す

## Project Goals

- Mirror Clock v1.0をApp Storeで公開する
- GitHubでソースコードと開発履歴を公開する
- note.comで開発から公開までの過程を記事化する
- FUJIWARA WORKSのポートフォリオとして公開する

## Current Status

- SwiftUIプロジェクトのbootstrap完了
- iOS Simulator向けBuild成功
- Unit Test成功
- iOS Simulatorでの起動確認済み
- 現在時刻を黒背景・明るい文字・monospaced digitsで表示

Mirror Mode、Settings、12/24時間表示、秒表示設定などのv1.0機能は未実装です。TestFlightおよびApp Storeでは未公開です。

## Roadmap

- [x] Phase 1: 開発基盤の作成
- [ ] Repository整備・GitHub公開準備
- [ ] Mirror Mode実装
- [ ] Settings・表示設定実装
- [ ] Orientation・Idle Timer対応
- [ ] GitHub ActionsによるCI
- [ ] TestFlight検証
- [ ] App Store公開

## Documentation

- [Product Requirements Document](docs/PRD.md)
- [UI Specification](docs/UI_SPEC.md)
- [Technical Design](docs/TECH_DESIGN.md)
- [Changelog](CHANGELOG.md)

## Build

Xcodeで `MirrorClock.xcodeproj` を開き、`MirrorClock` schemeをiPhone Simulator向けにBuildしてください。

CLI例：

```sh
DEVELOPER_DIR=/Applications/Xcode.app/Contents/Developer \
  xcodebuild \
  -project MirrorClock.xcodeproj \
  -scheme MirrorClock \
  -destination 'platform=iOS Simulator,name=<available iPhone simulator>' \
  build
```

## License

Mirror Clockは[MIT License](LICENSE)で公開予定です。

## FUJIWARA WORKS

Mirror Clock is developed by FUJIWARA WORKS.

- Website: https://fujiwaraworks.com
