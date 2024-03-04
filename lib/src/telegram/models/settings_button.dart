import 'package:js/js.dart';

/// https://core.telegram.org/bots/webapps#settingsbutton
@JS()
class SettingsButton {
  external bool isVisible;
  external void onClick(jsVoidCallback);
  external void offClick(jsVoidCallback);
  external Future<void> show();
  external Future<void> hide();
}
