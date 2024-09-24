part of '../../../telegram_web_app.dart';

class BottomButtonParams {
  BottomButtonParams({
    required this.text,
    required this.color,
    required this.textColor,
    required this.hasShineEffect,
    required this.position,
    this.isVisible = true,
    this.isActive = false,
  });

  /// Button text
  final String text;

  /// Button color
  final String color;

  /// Button text color
  final String textColor;

  /// Bot API 7.10+ enable shine effect;
  final bool hasShineEffect;

  /// Position of the button.
  final String position;

  /// Show the button
  final bool isVisible;

  /// Enable the button
  final bool isActive;
}
