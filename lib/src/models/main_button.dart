import 'dart:ui';

import 'package:telegram_web_app/src/telegram/internal.dart' as tg;

import '../../telegram_web_app.dart';

class MainButton {
  MainButton._();
  static MainButton? _instance;
  static MainButton get instance => _instance ??= MainButton._();

  /// Current button text. Set to CONTINUE by default.
  String get text => tg.MainButton.text;

  /// Current button color. Set to themeParams.button_color by default.
  Color? get color => tg.MainButton.color.toColor();

  /// Current button text color. Set to themeParams.button_text_color by default.
  Color? get textColor => tg.MainButton.textColor.toColor();

  /// Shows whether the button is visible. Set to false by default.
  bool get isVisible => tg.MainButton.isVisible;

  /// Shows whether the button is active. Set to true by default.
  bool get isActive => tg.MainButton.isActive;

  /// Readonly. Shows whether the button is displaying a loading indicator.
  bool get isProgressVisible => tg.MainButton.isProgressVisible;

  /// A method to set the button text.
  void setText(String text) => tg.MainButton.setText(text);

  /// A method that sets the button press event handler.
  void onClick(Function() callback) => tg.MainButton.onClick(callback);

  /// A method that removes the button press event handler.
  void offClick(Function() callback) => tg.MainButton.offClick(callback);

  /// A method to make the button visible.
  /// Note that opening the Mini App from the attachment menu hides the main
  /// button until the user interacts with the Mini App interface.
  Future<void> show() => tg.MainButton.show();

  /// A method to hide the button.
  Future<void> hide() => tg.MainButton.hide();

  /// A method to enable the button.
  void enable() => tg.MainButton..enable();

  /// A method to disable the button.
  void disable() => tg.MainButton.disable();

  /// A method to show a loading indicator on the button.
  /// It is recommended to display loading progress if the action tied to the button may
  /// take a long time. By default, the button is disabled while the action is in progress.
  /// If the parameter leaveActive=true is passed, the button remains enabled.
  void showProgress(bool leaveActive) => tg.MainButton.showProgress(leaveActive);

  /// A method to hide the loading indicator
  void hideProgress() => tg.MainButton.hideProgress();

  /// A method to set the button parameters. The params parameter is an object containing
  /// one or several fields that need to be changed:
  /// text - button text;
  /// color - button color;
  /// text_color - button text color;
  /// is_active - enable the button;
  /// is_visible - show the button.
  void setParams(MainButtonParams mainButtonParams) => tg.MainButton.setParams(mainButtonParams);
}
