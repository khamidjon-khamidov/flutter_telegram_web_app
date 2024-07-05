part of '../../telegram_js_models.dart';

/// This object describes the native popup button.
/// More details at [Telegram API](https://core.telegram.org/bots/webapps#popupbutton)
@JS()
@anonymous
class PopupButton {
  external factory PopupButton({String? id, String? type, String? text});

  @JS("id")
  external String? id;

  @JS("type")
  external String? type;

  @JS("text")
  external String? get text;
}
