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

/// Extensions to convert [Color] to hex #rrggbb format
extension ColorExtensions on Color {
  String get hexString => '#${value.toRadixString(16).substring(2)}';
}
