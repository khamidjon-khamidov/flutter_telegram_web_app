part of '../../telegram_js_models.dart';

@JS()
class BottomButton {
  external String text;
  external String color;
  external String textColor;
  external bool isVisible;
  external bool isActive;
  external bool get isProgressVisible;
  external bool get hasShineEffect;
  external String get position;
  external void setText(String text);
  external void onClick(callback);
  external void offClick(callback);
  external Future<void> show();
  external Future<void> hide();
  external void enable();
  external void disable();
  external void showProgress(bool leaveActive);
  external void hideProgress();
  external void setParams(BottomButtonParams bottomButtonParams);
}
