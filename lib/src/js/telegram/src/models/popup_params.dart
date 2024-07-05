part of '../../telegram_js_models.dart';

/// This object describes the native popup.
///
/// More details at [Telegram API](https://core.telegram.org/bots/webapps#color-schemes)
@JS()
@anonymous
class PopupParams {
  external factory PopupParams({
    String? title,
    required String message,
    List<PopupButton>? buttons,
  });

  /// The text to be displayed in the popup title, 0-64 characters.
  external String? get title;

  /// The message to be displayed in the body of the popup, 1-256 characters.
  external String get message;

  /// List of buttons to be displayed in the popup, 1-3 buttons.
  /// Set to [{“type”:“close”}] by default.
  external List<PopupButton>? get buttons;
}
