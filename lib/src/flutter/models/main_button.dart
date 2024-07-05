part of '../../../telegram_web_app.dart';

class MainButton {
  static MainButton? _instance;
  static MainButton get instance => _instance ??= MainButton();

  /// Current button text. Set to CONTINUE by default.
  String get text => telegram_js.MainButton.text;

  /// Current button color. Set to themeParams.button_color by default.
  Color? get color => telegram_js.MainButton.color.toColor();

  /// Current button text color. Set to themeParams.button_text_color by default.
  Color? get textColor => telegram_js.MainButton.textColor.toColor();

  /// Shows whether the button is visible. Set to false by default.
  bool get isVisible => telegram_js.MainButton.isVisible;

  /// Shows whether the button is active. Set to true by default.
  bool get isActive => telegram_js.MainButton.isActive;

  /// Readonly. Shows whether the button is displaying a loading indicator.
  bool get isProgressVisible => telegram_js.MainButton.isProgressVisible;

  /// A method to set the button text.
  void setText(String text) => telegram_js.MainButton.setText(text);

  /// A method that sets the button press event handler.
  void onClick(void Function() callback) =>
      telegram_js.MainButton.onClick(telegram_js.JsDynamicCallback(callback));

  /// A method that removes the button press event handler.
  void offClick(void Function() callback) =>
      telegram_js.MainButton.offClick(telegram_js.JsDynamicCallback(callback));

  /// A method to make the button visible.
  /// Note that opening the Mini App from the attachment menu hides the main
  /// button until the user interacts with the Mini App interface.
  Future<void> show() => telegram_js.MainButton.show();

  /// A method to hide the button.
  Future<void> hide() => telegram_js.MainButton.hide();

  /// A method to enable the button.
  void enable() => telegram_js.MainButton..enable();

  /// A method to disable the button.
  void disable() => telegram_js.MainButton.disable();

  /// A method to show a loading indicator on the button.
  /// It is recommended to display loading progress if the action tied to the button may
  /// take a long time. By default, the button is disabled while the action is in progress.
  /// If the parameter leaveActive=true is passed, the button remains enabled.
  void showProgress(bool leaveActive) => telegram_js.MainButton.showProgress(leaveActive);

  /// A method to hide the loading indicator
  void hideProgress() => telegram_js.MainButton.hideProgress();

  /// A method to set the button parameters. The params parameter is an object containing
  /// one or several fields that need to be changed:
  /// text - button text;
  /// color - button color;
  /// text_color - button text color;
  /// is_active - enable the button;
  /// is_visible - show the button.
  void setParams(MainButtonParams mainButtonParams) =>
      telegram_js.MainButton.setParams(FlutterJSBridge.convertToJS(mainButtonParams));
}
