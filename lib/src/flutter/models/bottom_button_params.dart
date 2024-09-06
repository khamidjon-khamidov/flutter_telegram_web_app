part of '../../../telegram_web_app.dart';

class BottomButtonParams {
  /// Button text
  final String text;

  /// Button color
  final String color;

  /// Button text color
  final String textColor;

  /// Shows whether the button has a shine effect. Set to false by default.
  final bool hasShineEffect;

  /// position of the button
  final BottomButtonPosition position;

  /// Show the button
  final bool isVisible;

  /// Enable the button
  final bool isActive;

  BottomButtonParams({
    required this.text,
    required this.color,
    required this.textColor,
    required this.hasShineEffect,
    required this.position,
    this.isVisible = true,
    this.isActive = false,
  });
}
