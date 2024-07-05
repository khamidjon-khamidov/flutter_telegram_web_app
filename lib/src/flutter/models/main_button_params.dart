part of '../../../telegram_web_app.dart';

class MainButtonParams {
  /// Button text
  final String text;

  /// Button color
  final String color;

  /// Button text color
  final String textColor;

  /// Show the button
  final bool isVisible;

  /// Enable the button
  final bool isActive;

  MainButtonParams({
    required this.text,
    required this.color,
    required this.textColor,
    this.isVisible = true,
    this.isActive = false,
  });
}
