part of '../../../telegram_web_app.dart';

class SettingsButton {
  SettingsButton._();

  static SettingsButton? _instance;

  static SettingsButton get instance => _instance ??= SettingsButton._();

  /// Shows whether the button is visible. Set to false by default.
  bool get isVisible => Telegram.WebApp.SettingsButton.isVisible;

  /// A method that sets the button press event handler.
  void onClick(void Function() callback) => Telegram.WebApp.SettingsButton.onClick(callback.toJS);

  /// A method that removes the button press event handler.
  void offClick(void Function() callback) => Telegram.WebApp.SettingsButton.offClick(callback.toJS);

  /// A method to make the button active and visible.
  show() => Telegram.WebApp.SettingsButton.show();

  /// A method to hide the button.
  hide() => Telegram.WebApp.SettingsButton.hide();
}
