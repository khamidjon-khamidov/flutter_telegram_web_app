import 'package:js/js.dart';

///https://core.telegram.org/bots/webapps#themeparams
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

  /// Text color for destructive actions
  external String get destructive_text_color;
}
