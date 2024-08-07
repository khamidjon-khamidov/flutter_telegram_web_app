part of '../../telegram_js_models.dart';

///https://core.telegram.org/bots/webapps#backbutton
@JS()
class BackButton {
  external bool isVisible;
  external void onClick(callback);
  external void offClick(callback);
  external Future show();
  external Future hide();
}
