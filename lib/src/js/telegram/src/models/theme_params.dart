part of '../../telegram_js_models.dart';

/// Mini Apps can [adjust the appearance](https://core.telegram.org/bots/webapps#color-schemes) of the interface to match the Telegram user's app in real time.
/// This object contains the user's current theme settings.
///
/// More details at [Telegram API](https://core.telegram.org/bots/webapps#themeparams)
@JS()
class ThemeParams {
  external String get bg_color;

  /// Main text color
  external String get text_color;

  external String get hint_color;

  external String get link_color;

  external String get button_color;

  external String get button_text_color;

  external String get secondary_bg_color;

  external String get header_bg_color;

  external String get accent_text_color;

  external String get section_bg_color;

  external String get section_header_text_color;

  external String get subtitle_text_color;

  external String get destructive_text_color;

  external String get section_separator_color;
}
