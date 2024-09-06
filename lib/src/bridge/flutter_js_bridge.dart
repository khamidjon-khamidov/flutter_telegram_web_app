import 'package:telegram_web_app/src/js/telegram/telegram_js_models.dart' as telegram_js_models;
import 'package:telegram_web_app/telegram_web_app.dart' as telegram_web_app;

abstract class FlutterJSBridge {
  static telegram_js_models.BottomButtonParams convertToJS(
      telegram_web_app.BottomButtonParams params) {
    return telegram_js_models.BottomButtonParams(
      text: params.text,
      color: params.color,
      text_color: params.textColor,
      has_shine_effect: params.hasShineEffect,
      position: params.position.name,
      is_visible: params.isVisible,
      is_active: params.isActive,
    );
  }
}
