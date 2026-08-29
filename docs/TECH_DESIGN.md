# Mirror Clock Technical Design

Version: 1.0
Status: Baseline

## 1. Principles

- SwiftUI first
- Apple標準API優先
- Third-party dependency = 0を目標
- 小規模アプリに過剰Architectureを導入しない
- Stateは可能な限り所有Viewの近くに置く
- 公開Repositoryとして読みやすくする

## 2. Technology

- Platform: iPhone
- Language: Swift
- UI: SwiftUI
- Minimum OS: iOS 18.0
- IDE: Xcode
- Persistence: AppStorage / UserDefaults
- Version Control: Git
- Repository: GitHub
- CI: GitHub Actions
- Beta: TestFlight
- Production: App Store
- Backend: none
- Network: none
- Third-party SDK: none

## 3. High-level Structure

MirrorClockApp
  -> ClockScreen
      -> ClockTimelineView
          -> TimeDisplayView
      -> ControlsOverlay
      -> SettingsView

補助責務として必要に応じて：

- ClockFormatter
- IdleTimerController

ただし、必要になるまで不必要にFileや型を増やさない。

## 4. Time Update

時計は自前カウンターで加算しない。

現在のDateをsource of truthとする。

第一候補：

Seconds OFF:
- TimelineView(.everyMinute)

Seconds ON:
- TimelineView periodic 1 second

Background復帰後も現在Dateから再描画する。

## 5. Mirror Rendering

Mirror変換はTimeDisplayViewだけに適用する。

概念：

scaleEffect(x: -1, y: 1)

ControlsやSettingsには適用しない。

## 6. Preferences

保存対象：

- Mirror Mode
- Time Format
- Show Seconds

AppStorage / UserDefaultsを利用する。

Core Data / SwiftDataは使用しない。

## 7. Idle Timer

Clock ScreenがActiveな間だけIdle Timerを無効化する。

inactive / background等では必ず通常状態へ戻す。

UIKit依存は必要最小限の場所へ隔離する。

## 8. Testing

Unit Test:
- Clock formatting
- 12h / 24h
- seconds
- boundary time
- preference関連ロジック

UI / Integration:
- Launch
- Mirror toggle
- Settings
- persistence
- Portrait / Landscape

Manual:
- 実際の鏡を使ってMirror Modeが正常に読めることを確認する

## 9. Git Workflow

main
  <- feature/*

基本：

Issue
 -> feature branch
 -> implementation
 -> test
 -> Pull Request
 -> CI
 -> review
 -> merge

軽量なConventional Commit形式を利用する。

## 10. CI

GitHub Actions:

pull_request -> main
push -> main

最低限：

- checkout
- build
- tests

v1.0ではTestFlight/App Storeへの自動Deploymentは行わない。

## 11. Privacy / Security

v1.0:

- Network accessなし
- Accountなし
- Personal dataなし
- Analyticsなし
- Advertisingなし
- Third-party SDKなし
- API keyなし
- Backendなし

App Store申請直前に、その時点のApple要件で再確認する。

## 12. Versioning

Initial App Store release:

1.0.0

Git tag:

v1.0.0

App Store公開CommitとGitHub ReleaseのVersionを対応させる。

## 13. Failure Modes

- 時計ずれ -> 現在Dateから生成
- Background復帰後の古い表示 -> lifecycle検証
- Seconds OFFなのに高頻度更新 -> everyMinute
- ControlsまでMirror化 -> TimeDisplayのみflip
- Idle Timerが戻らない -> lifecycleでreset
- Landscape文字切れ -> adaptive layout
- Scope creep -> v1.1+ Backlog

## 14. Architecture Not Adopted for v1.0

必要性がない限り以下は使わない。

- Clean Architecture
- Repository Pattern
- DI Framework
- Core Data
- SwiftData
- RxSwift
- Firebase
- Analytics SDK
- Backend
- Remote Config
- Feature Flag System
