part of '../../telegram_js_models.dart';

/// **Bot API 8.0+** 
/// 
/// This object represents the content-defined safe area insets, providing padding values to ensure content remains within visible boundaries, avoiding overlap with Telegram UI elements.
extension type ContentSafeAreaInsetJSObject._(JSObject _) implements JSObject {
  /// **Bot API 8.0+** 
  /// 
  /// The top inset in pixels, representing the space to avoid at the top of the content area.
  external int get top;

  /// **Bot API 8.0+** 
  /// 
  /// The bottom inset in pixels, representing the space to avoid at the bottom of the content area.
  external int get bottom;

  /// **Bot API 8.0+** 
  /// 
  /// The left inset in pixels, representing the space to avoid at the left of the content area.
  external int get left;

  /// **Bot API 8.0+** 
  /// 
  /// The right inset in pixels, representing the space to avoid at the right of the content area.
  external int get right;
}