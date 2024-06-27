import 'package:js/js.dart';

/// This object describes the native popup for scanning QR codes.
/// 
/// More details at [Telegram API](https://core.telegram.org/bots/webapps#scanqrpopupparams)
@JS()
@anonymous
class ScanQrPopupParams {
  external factory ScanQrPopupParams({String? text});

  /// The text to be displayed under the 'Scan QR' heading, 0-64 characters.
  @JS("text")
  external String? get text;
}