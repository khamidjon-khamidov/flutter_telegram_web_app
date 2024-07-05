part of '../../telegram_js_models.dart';

/// https://core.telegram.org/bots/webapps#settingsbutton
@JS()
class SettingsButton {
  external bool isVisible;
  external void onClick(callback);
  external void offClick(callback);
  external Future<void> show();
  external Future<void> hide();
}
