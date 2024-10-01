part of '../../telegram_js_models.dart';

/// This object describes the native popup button.
/// More details at [Telegram API](https://core.telegram.org/bots/webapps#popupbutton)
@JS('PopupButton')
extension type PopupButtonJSObject._(JSObject _) implements JSObject {
  external factory PopupButtonJSObject({String? id, String? type, String? text});

  external String? id;

  external String? type;

  external String? get text;
}
