part of '../../telegram_js_models.dart';

/// https://core.telegram.org/bots/webapps#settingsbutton
extension type SettingsButtonJSObject._(JSObject _) implements JSObject {
  external bool isVisible;

  external void onClick(JSExportedDartFunction callback);

  external void offClick(JSExportedDartFunction callback);

  external void show();

  external void hide();
}
