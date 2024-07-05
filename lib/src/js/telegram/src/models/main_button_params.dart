part of '../../telegram_js_models.dart';

@JS()
@anonymous
class MainButtonParams {
  /// Button text
  external String get text;

  /// Button color
  external String get color;

  /// Button text color
  external String get textColor;

  /// Show the button
  external bool get isVisible;

  /// Enable the button
  external bool get isActive;

  external factory MainButtonParams({
    required String text,
    required String color,
    required String textColor,
    bool isVisible = true,
    bool isActive = false,
  });
}
