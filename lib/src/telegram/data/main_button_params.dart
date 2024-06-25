import 'package:js/js.dart';

@JS()
@anonymous
class MainButtonParams {
  /// Button text
  @JS("text")
  external String get text;

  /// Button color
  @JS("color")
  external String get color;

  /// Button text color
  @JS("text_color")
  external String get textColor;

  /// Show the button
  @JS("is_visible")
  external bool get isVisible;

  /// Enable the button
  @JS("is_active")
  external bool get isActive;

  external factory MainButtonParams({
    required String text,
    required String color,
    required String textColor,
    bool isVisible = true,
    bool isActive = false,
  });
}