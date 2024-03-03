import 'dart:ui';

/// Extension to convert a [Color] to a hex string
extension ColorsExtensions on Color {
  String toHex() {
    return '#${red.toRadixString(16).padLeft(2, '0')}${green.toRadixString(16).padLeft(2, '0')}${blue.toRadixString(16).padLeft(2, '0')}'
        .toUpperCase();
  }
}

/// Extension to convert a [String] to a Color
extension StringExtensions on String {
  Color toColor() {
    try {
      var hexColor = toUpperCase().replaceAll('#', '');
      if (hexColor.length == 6) hexColor = 'FF$hexColor';
      var data = int.parse(hexColor, radix: 16);
      return Color(data);
    } catch (e) {
      /// Return transparent color if the color is not valid
      return const Color(0x00000000);
    }
  }
}
