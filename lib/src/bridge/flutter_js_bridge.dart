import 'package:telegram_web_app/src/js/telegram/telegram_js_models.dart' as telegram_js_models;
import 'package:telegram_web_app/telegram_web_app.dart' as telegram_web_app;

abstract class FlutterJSBridge {
  static telegram_js_models.MainButtonParams convertToJS(telegram_web_app.MainButtonParams params) {
    return telegram_js_models.MainButtonParams(
      text: params.text,
      color: params.color,
      textColor: params.textColor,
      isVisible: params.isVisible,
      isActive: params.isActive,
    );
  }
}
