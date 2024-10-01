part of '../../../telegram_web_app.dart';

class BottomButton {
  BottomButton(BottomButtonJSObject jsObject) : _jsObject = jsObject;

  final BottomButtonJSObject _jsObject;

  /// Current button text. Set to CONTINUE by default.
  String get text => _jsObject.text;

  /// Current button color. Set to themeParams.button_color by default.
  Color? get color => _jsObject.color.toColor();

  /// Current button text color. Set to themeParams.button_text_color by default.
  Color? get textColor => _jsObject.textColor.toColor();

  /// Shows whether the button is visible. Set to false by default.
  bool get isVisible => _jsObject.isVisible;

  /// Shows whether the button is active. Set to true by default.
  bool get isActive => _jsObject.isActive;

  /// Readonly. Shows whether the button is displaying a loading indicator.
  bool get isProgressVisible => _jsObject.isProgressVisible;

  /// A method to set the button text.
  void setText(String text) => _jsObject.setText(text);

  /// A method that sets the button press event handler.
  void onClick(void Function() callback) => _jsObject.onClick(callback.toJS);

  /// A method that removes the button press event handler.
  void offClick(void Function() callback) => _jsObject.offClick(callback.toJS);

  /// A method to make the button visible.
  /// Note that opening the Mini App from the attachment menu hides the main
  /// button until the user interacts with the Mini App interface.
  void show() => _jsObject.show();

  /// A method to hide the button.
  void hide() => _jsObject.hide();

  /// A method to enable the button.
  void enable() => _jsObject..enable();

  /// A method to disable the button.
  void disable() => _jsObject.disable();

  /// A method to show a loading indicator on the button.
  /// It is recommended to display loading progress if the action tied to the button may
  /// take a long time. By default, the button is disabled while the action is in progress.
  /// If the parameter leaveActive=true is passed, the button remains enabled.
  void showProgress(bool leaveActive) => _jsObject.showProgress(leaveActive);

  /// A method to hide the loading indicator
  void hideProgress() => _jsObject.hideProgress();

  /// A method to set the button parameters. The params parameter is an object containing
  /// one or several fields that need to be changed:
  /// text - button text;
  /// color - button color;
  /// text_color - button text color;
  /// is_active - enable the button;
  /// is_visible - show the button.
  void setParams(BottomButtonParams secondaryButtonParams) => _jsObject.setParams(
        BottomButtonParamsJSObject(
          text: secondaryButtonParams.text,
          color: secondaryButtonParams.color,
          textColor: secondaryButtonParams.textColor,
          hasShineEffect: secondaryButtonParams.hasShineEffect,
          position: secondaryButtonParams.position,
          isVisible: secondaryButtonParams.isVisible,
          isActive: secondaryButtonParams.isActive,
        ),
      );
}
