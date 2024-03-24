import 'package:js/js.dart';

@JS()
@anonymous
class MainButtonParams {
  external String get text;
  external String get color;
  external String get textColor;
  external bool get is_visible;
  external bool get is_active;

  external factory MainButtonParams({
    required String text,
    required String color,
    required String textColor,
    bool isVisible = true,
    bool isActive = false,
  });
}
