## 0.1.6
* Support for Bot Api 7.8 - shareToStory

## 0.1.5
* Update example app for [#21](https://github.com/khamidjon-khamidov/flutter_telegram_web_app/issues/21)
* username is not optional in WebAppChat [#14](https://github.com/khamidjon-khamidov/flutter_telegram_web_app/issues/14)
* Bug fixes for popup button and section bg color. `OlegNovosad` [#15](https://github.com/khamidjon-khamidov/flutter_telegram_web_app/issues/15)
* Make WebAppInitData mockable [#24](https://github.com/khamidjon-khamidov/flutter_telegram_web_app/pull/24)
* Added BiometricManager support
* Added section_separator_color
* Added `isVerticalSwipesEnabled`, `enableVerticalSwipes()`, `disableVerticalSwipes()` apis

## 0.1.4
* Remove `tgWebAppStartParam` - doesn't exist in telegram script
* Add test for parsing raw to TelegramInitData
* Handle null values for `chat_type`, `chat_instance`, `username`
* Add `queryId` param for `TelegramInitData`

## 0.1.3

* Bug fix - `openInvoice` callback not working [OlegNovosad](https://github.com/khamidjon-khamidov/flutter_telegram_web_app/pull/5)
* Bug fix - User name/surname `utf-8` support [bugrevealingbme](https://github.com/khamidjon-khamidov/flutter_telegram_web_app/pull/4)
* Update `example` app index.html in accordance with latest flutter version

## 0.1.2

* Add support for telegram theme colors for widgets in theme_util.dart
* Make telegram objects mockable
* Add start param value
* Add telegram raw in init data

## 0.1.0

* Fix bug - requestWriteAccess callbacks not working

## 0.0.6

* Add mocking for theme

## 0.0.5

* Add TelegramWebAppFake for mocking
* Fix bug - make allowsWriteToPm bool

## 0.0.4

* Update Readme.md, add repository link and add tutorial

## 0.0.1

* Initial release
