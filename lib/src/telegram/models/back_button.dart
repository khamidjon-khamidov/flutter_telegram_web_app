import 'dart:js_interop';

///https://core.telegram.org/bots/webapps#backbutton
@JS()
class BackButton {
  external bool isVisible;
  external void onClick(jsVoidCallback);
  external void offClick(jsVoidCallback);
  external Future show();
  external Future hide();
}
