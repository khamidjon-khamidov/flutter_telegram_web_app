part of '../../telegram_js_models.dart';

/// This object describes the native popup for scanning QR codes.
///
/// More details at [Telegram API](https://core.telegram.org/bots/webapps#scanqrpopupparams)
@JS('ScanQrPopupParams')
extension type ScanQrPopupParamsJSObject._(JSObject _) implements JSObject {
  external factory ScanQrPopupParamsJSObject({String? text});

  /// The text to be displayed under the 'Scan QR' heading, 0-64 characters.
  external String? get text;
}
