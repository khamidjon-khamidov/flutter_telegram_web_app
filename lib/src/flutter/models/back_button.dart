part of '../../../telegram_web_app.dart';

class BackButton {
  BackButton._();

  static BackButton? _instance;

  static BackButton get instance => _instance ??= BackButton._();

  /// Shows whether the button is visible. Set to false by default.
  bool get isVisible => Telegram.WebApp.BackButton.isVisible;

  /// A method that sets the button press event handler.
  void onClick(void Function() callback) => Telegram.WebApp.BackButton.onClick(callback.toJS);

  /// A method that removes the button press event handler.
  void offClick(void Function() callback) => Telegram.WebApp.BackButton.offClick(callback.toJS);

  /// A method to make the button active and visible.
  void show() => Telegram.WebApp.BackButton.show();

  /// A method to hide the button.
  void hide() => Telegram.WebApp.BackButton.hide();
}
