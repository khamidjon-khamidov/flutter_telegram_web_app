part of '../../telegram_js_models.dart';

@JS()
@anonymous
class BottomButtonParams {
  /// Button text
  external String? get text;

  /// Button color
  external String? get color;

  /// Button text color
  external String? get text_color;

  // enable shine effect
  external bool? get has_shine_effect;

  /// position of the secondary button
  external String? get position;

  /// Show the button
  external bool? get is_visible;

  /// Enable the button
  external bool? get is_active;

  external factory BottomButtonParams({
    required String? text,
    required String? color,
    required String? text_color,
    required bool? has_shine_effect,
    required String? position,
    required bool? is_visible,
    required bool? is_active,
  });
}
