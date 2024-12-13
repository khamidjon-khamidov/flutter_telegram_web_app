part of '../../telegram_js_models.dart';

extension type BottomButtonParamsJSObject._(JSObject _) implements JSObject {
  external factory BottomButtonParamsJSObject({
    required String text,
    required String color,
    required String textColor,
    required bool hasShineEffect,
    required String position,
    required bool isActive,
    required bool isVisible,
  });

  /// Button text
  external String get text;

  /// Button color
  external String get color;

  /// Button text color
  external String get textColor;

  /// Bot API 7.10+ enable shine effect;
  external bool get hasShineEffect;

  /// Position of the button.
  external String get position;

  /// Enable the button
  external bool get isActive;

  /// Show the button
  external bool get isVisible;
}
