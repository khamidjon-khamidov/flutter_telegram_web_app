part of '../../../telegram_web_app.dart';

/// **Bot API 8.0+** 
/// 
/// This object represents the system-defined safe area insets, providing padding values to ensure content remains within visible boundaries, avoiding overlap with system UI elements like notches or navigation bars.
class SafeAreaInset {
  final SafeAreaInsetJSObject _sai;

  SafeAreaInset(this._sai);

  /// **Bot API 8.0+** 
  /// 
  /// The top inset in pixels, representing the space to avoid at the top of the screen.
  int get top => _sai.top;

  /// **Bot API 8.0+** 
  /// 
  /// The bottom inset in pixels, representing the space to avoid at the bottom of the screen.
  int get bottom => _sai.bottom;

  /// **Bot API 8.0+** 
  /// 
  /// The left inset in pixels, representing the space to avoid at the left of the screen.
  int get left => _sai.left;

  /// **Bot API 8.0+** 
  /// 
  /// The right inset in pixels, representing the space to avoid at the right of the screen.
  int get right => _sai.right;
}