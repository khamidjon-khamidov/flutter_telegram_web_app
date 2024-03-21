import 'package:js/js.dart';

import '../data/main_button_params.dart';

///https://core.telegram.org/bots/webapps#mainbutton
@JS()
class MainButton {
  external String text;
  external String color;
  external String textColor;
  external bool isVisible;
  external bool isActive;
  external bool get isProgressVisible;
  external void setText(String text);
  external void onClick(callback);
  external void offClick(callback);
  external Future<void> show();
  external Future<void> hide();
  external void enable();
  external void disable();
  external void showProgress(bool leaveActive);
  external void hideProgress();
  external void setParams(MainButtonParams mainButtonParams);
}
