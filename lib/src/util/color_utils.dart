import 'dart:ui';

/// Extension to convert a [String] to a Color
extension StringExtensions on String {
  Color? toColor() {
    try {
      var hexColor = toUpperCase().replaceAll('#', '');
      if (hexColor.length == 6) hexColor = 'FF$hexColor';
      var data = int.parse(hexColor, radix: 16);
      return Color(data);
    } catch (e) {
      return null;
    }
  }
}
