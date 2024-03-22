import 'package:js/js.dart';

/// https://core.telegram.org/bots/webapps#scanqrpopupparams
@JS()
@anonymous
class ScanQrPopupParams {
  external factory ScanQrPopupParams({String? text});

  /// Optional. The text to be displayed under the 'Scan QR' heading, 0-64 characters.
  external String? get text;
}
