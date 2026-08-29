# Mirror Clock Product Requirements Document

Version: 1.0
Status: Baseline

## 1. Product Overview

Mirror Clockは、鏡に映した際に正しい向きで時刻を確認できる、シンプルなiPhone向けデジタル時計アプリ。

一文で表すと：

「鏡越しに、正しい向きで時刻を見るためのシンプルなデジタル時計。」

## 2. Project Purpose

第一目的は短期的な収益ではなく、以下を実際に完走し、FUJIWARA WORKSの公開実績とすること。

- Swift / SwiftUIによるiOSアプリ開発
- Codexを利用したAI-assisted development
- Git / GitHubによる開発管理
- テストとCI
- TestFlight
- App Store Connect / App Store審査
- App Store正式公開
- note.comによる開発過程の発信
- FUJIWARA WORKSポートフォリオへの掲載

## 3. Success Criteria

Primary:
- Mirror Clock v1.0がApp Storeで一般公開される

Secondary:
- GitHub Public Repositoryが存在する
- GitHub Release v1.0.0が存在する
- Codexを実開発に利用する
- note.comで開発から公開までを記事化する
- fujiwaraworks.comから成果物を確認できる

## 4. Primary Use Case

ユーザーがiPhoneを鏡の前に置き、鏡に映った画面を見ることで、正しい方向の数字として現在時刻を確認できる。

## 5. v1.0 Functional Requirements

- 現在時刻を大きく表示
- Mirror Modeによる時計表示の左右反転
- Normal / Mirror切替
- 12時間 / 24時間表示
- 秒表示ON/OFF
- Portrait / Landscape対応
- 時計利用中の自動ロック抑止
- 設定保持

## 6. Non-functional Requirements

- オフライン完結
- ユーザー登録なし
- 個人情報収集なし
- 広告なし
- Analyticsなしを原則とする
- 外部トラッキングなし
- 不要な権限を要求しない
- 不要なNetwork通信なし
- Third-party dependencyなしを目標
- 長時間表示時のCPU / Battery負荷を考慮する
- 公開Repositoryとして読みやすいコードにする

## 7. Out of Scope for v1.0

- Alarm
- Timer
- Stopwatch
- World Clock
- Weather
- Calendar
- HealthKit
- Apple Watch
- Widget
- Live Activities
- iCloud sync
- User account
- Login
- Backend
- Web API
- SNS
- Advertising
- In-App Purchase
- Subscription
- 複雑なTheme
- 多数のFont
- Android

新規アイデアは原則v1.1+ Backlogへ送る。

## 8. Definition of Done

Product:
- 実機テスト
- TestFlight
- App Store審査通過
- App Store v1.0公開

GitHub:
- Public Repository
- README
- LICENSE
- CHANGELOG
- Issues
- Pull Requests
- CI
- v1.0.0 tag
- GitHub Release

Content:
- note.comで開発過程を記事化
- 最終公開記事
- FUJIWARA WORKSサイト掲載
- App Store / GitHub / noteへのリンク
