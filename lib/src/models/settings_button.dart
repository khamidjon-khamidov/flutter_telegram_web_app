import 'package:telegram_web_app/src/telegram/internal.dart' as tg;

class SettingsButton {
  SettingsButton._();
  static SettingsButton? _instance;
  static SettingsButton get instance => _instance ??= SettingsButton._();

  /// Shows whether the button is visible. Set to false by default.
  bool get isVisible => tg.SettingsButton.isVisible;

  /// A method that sets the button press event handler.
  void onClick(void Function() callback) =>
      tg.SettingsButton.onClick(tg.JsDynamicCallback(callback));

  /// A method that removes the button press event handler.
  void offClick(void Function() callback) =>
      tg.SettingsButton.offClick(tg.JsDynamicCallback(callback));

  /// A method to make the button active and visible.
  Future show() => tg.SettingsButton.show();

  /// A method to hide the button.
  Future hide() => tg.SettingsButton.hide();
}
