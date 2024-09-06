part of '../../../telegram_web_app.dart';

/// Bot API 7.10+ Position of the secondary button. Not defined for
/// the main button. It applies only if both the main and secondary
/// buttons are visible. Set to left by default.
enum BottomButtonPosition {
  /// displayed to the left of the main button
  left,

  /// displayed to the right of the main button
  right,

  /// displayed above the main button
  top,

  /// displayed below the main button
  bottom;

  static BottomButtonPosition fromString(String position) {
    switch (position) {
      case "left":
        return BottomButtonPosition.left;
      case "right":
        return BottomButtonPosition.right;
      case "top":
        return BottomButtonPosition.top;
      case "bottom":
        return BottomButtonPosition.bottom;
    }

    throw UnsupportedError("BottomButtonPosition: $position is not supported");
  }
}

class BottomButton {
  static BottomButton? _mainButtoninstance;
  static BottomButton? _secondaryButtonInstance;

  static BottomButton get mainButtonInstance =>
      _mainButtoninstance ??= BottomButton(() => telegram_js.MainButton);

  static BottomButton get secondaryButtonInstance =>
      _secondaryButtonInstance ??= BottomButton(() => telegram_js.SecondaryButton);

  final telegram_js_models.BottomButton Function() bottomButton;

  BottomButton(this.bottomButton);

  /// Current button text. Set to CONTINUE by default.
  String get text => bottomButton().text;

  /// Current button color. Set to themeParams.button_color by default.
  Color? get color => bottomButton().color.toColor();

  /// Current button text color. Set to themeParams.button_text_color by default.
  Color? get textColor => bottomButton().textColor.toColor();

  /// Shows whether the button is visible. Set to false by default.
  bool get isVisible => bottomButton().isVisible;

  /// Shows whether the button is active. Set to true by default.
  bool get isActive => bottomButton().isActive;

  /// Bot API 7.10+ Shows whether the button has a shine effect. Set to false by default.
  bool get hasShineEffect =>
      telegram_js.isVersionAtLeast("Bot API 7.10") ? bottomButton().hasShineEffect : false;

  /// Bot API 7.10+ Position of the secondary button. Not defined for the main button.
  /// It applies only if both the main and secondary buttons are visible. Set to left by default.
  BottomButtonPosition? get position => telegram_js.isVersionAtLeast("Bot API 7.10")
      ? BottomButtonPosition.fromString(bottomButton().position)
      : null;

  /// Readonly. Shows whether the button is displaying a loading indicator.
  bool get isProgressVisible => bottomButton().isProgressVisible;

  /// A method to set the button text.
  void setText(String text) => bottomButton().setText(text);

  /// A method that sets the button press event handler.
  void onClick(void Function() callback) => bottomButton().onClick(JsDynamicCallback(callback));

  /// A method that removes the button press event handler.
  void offClick(void Function() callback) => bottomButton().offClick(JsDynamicCallback(callback));

  /// A method to make the button visible.
  /// Note that opening the Mini App from the attachment menu hides the main
  /// button until the user interacts with the Mini App interface.
  Future<void> show() => bottomButton().show();

  /// A method to hide the button.
  Future<void> hide() => bottomButton().hide();

  /// A method to enable the button.
  void enable() => bottomButton()..enable();

  /// A method to disable the button.
  void disable() => bottomButton().disable();

  /// A method to show a loading indicator on the button.
  /// It is recommended to display loading progress if the action tied to the button may
  /// take a long time. By default, the button is disabled while the action is in progress.
  /// If the parameter leaveActive=true is passed, the button remains enabled.
  void showProgress(bool leaveActive) => bottomButton().showProgress(leaveActive);

  /// A method to hide the loading indicator
  void hideProgress() => bottomButton().hideProgress();

  /// A method to set the button parameters. The params parameter is an object containing
  /// one or several fields that need to be changed:
  /// text - button text;
  /// color - button color;
  /// text_color - button text color;
  /// is_active - enable the button;
  /// is_visible - show the button.
  void setParams(BottomButtonParams bottomButtonParams) =>
      bottomButton().setParams(FlutterJSBridge.convertToJS(bottomButtonParams));
}
