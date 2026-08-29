# Mirror Clock UI Specification

Version: 1.0
Status: Baseline

## 1. Design Principle

最重要要件：

「鏡の中で、時刻が瞬時に読めること」

優先順位：

1. 時刻の視認性
2. Mirror Modeの分かりやすさ
3. 操作の少なさ
4. 長時間表示しても邪魔にならない
5. Appleプラットフォームに自然な操作

## 2. Screen Structure

v1.0は原則、

- Clock Screen
- Settings Sheet

の1画面＋設定Sheet構成。

複雑なNavigation構造は作らない。

## 3. Clock Screen

通常時は時計を画面の中心に大きく表示する。

基本状態では時計表示を主役とし、Controlsを常時表示しない。

画面を1回TapするとControlsを表示する。

Controls:
- Mirror ON / OFF
- Settings

一定時間操作がなければControlsを非表示にする。

## 4. Mirror Mode

左右反転するのはTime Displayのみ。

Controls、Settings、Button、Label等は反転しない。

## 5. Typography

- Apple標準Font
- monospaced digits
- 時・分を主表示
- 秒は補助表示
- 画面サイズに応じて適応的に拡大縮小

## 6. Orientation

- Portrait
- Landscape Left
- Landscape Right

横置きでも時刻を可能な限り大きく表示する。

## 7. Appearance

v1.0の基本：

- 黒背景
- 明るい時計文字
- 時計表示の視認性を最優先

複雑なTheme Systemは作らない。

## 8. Settings

最低限：

- Time Format
- Show Seconds
- About
- Version
- FUJIWARA WORKS
- Privacy information

Mirror ModeはSettings内に隠さずClock Screenから直接切替可能にする。

## 9. First Launch

専用Onboarding画面は作らない。

起動後すぐClock Screenを表示する。

必要ならMirror Modeの使い方だけ短い補助表示を検討する。

## 10. Accessibility

- 時計に適切なAccessibility Label
- Mirror ModeでもAccessibility情報は反転させない
- ControlsにLabelと状態を提供
- 十分なTap target
- 十分なContrast
