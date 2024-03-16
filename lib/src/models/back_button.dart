import 'package:telegram_web_app/src/telegram/internal.dart' as tg;

class BackButton {
  BackButton._();
  static BackButton? _instance;
  static BackButton get instance => _instance ??= BackButton._();

  /// Shows whether the button is visible. Set to false by default.
  bool get isVisible => tg.BackButton.isVisible;

  /// A method that sets the button press event handler.
  void onClick(void Function() callback) => tg.BackButton.onClick(tg.JsDynamicCallback(callback));

  /// A method that removes the button press event handler.
  void offClick(void Function() callback) => tg.BackButton.offClick(tg.JsDynamicCallback(callback));

  /// A method to make the button active and visible.
  Future show() => tg.BackButton.show();

  /// A method to hide the button.
  Future hide() => tg.BackButton.hide();
}
