part of '../../../telegram_web_app.dart';

/// **Bot API 8.0+**
///
/// This object represents the content-defined safe area insets, providing padding values to ensure content remains within visible boundaries, avoiding overlap with Telegram UI elements.
class ContentSafeAreaInset {
  final ContentSafeAreaInsetJSObject _sai;

  ContentSafeAreaInset(this._sai);

  /// **Bot API 8.0+**
  ///
  /// The top inset in pixels, representing the space to avoid at the top of the content area.
  int get top => _sai.top;

  /// **Bot API 8.0+**
  ///
  /// The bottom inset in pixels, representing the space to avoid at the bottom of the content area.
  int get bottom => _sai.bottom;

  /// **Bot API 8.0+**
  ///
  /// The left inset in pixels, representing the space to avoid at the left of the content area.
  int get left => _sai.left;

  /// **Bot API 8.0+**
  ///
  /// The right inset in pixels, representing the space to avoid at the right of the content area.
  int get right => _sai.right;

  @override
  String toString() {
    return 'ContentSafeAreaInset{'
        'top: ${_sai.top}, '
        'bottom: ${_sai.bottom}, '
        'left: ${_sai.left}, '
        'right: ${_sai.right}'
        '}';
  }
}
