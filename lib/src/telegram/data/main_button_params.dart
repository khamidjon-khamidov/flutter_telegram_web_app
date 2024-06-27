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
  @JS("textColor")
  external String get textColor;

  /// Show the button
  @JS("isVisible")
  external bool get isVisible;

  /// Shows whether the button is displaying a loading indicator.
  /// Readonly.
  @JS("isProgressVisible")
  external bool get isProgressVisible;

  /// Enable the button
  @JS("isActive")
  external bool get isActive;

  external factory MainButtonParams({
    required String text,
    required String color,
    required String textColor,
    bool isVisible = true,
    bool isActive = false
  });
}