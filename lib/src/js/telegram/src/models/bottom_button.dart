part of '../../telegram_js_models.dart';

extension type BottomButtonJSObject._(JSObject _) implements JSObject {
  /// Readonly. Type of the button. It can be either main for the main button or
  /// secondary for the secondary button.
  external String get type;

  /// Current button text. Set to Continue for the main button and Cancel for the
  /// secondary button by default.
  external String text;

  /// Current button color. Set to themeParams.button_color for the main button
  /// and themeParams.bottom_bar_bg_color for the secondary button by
  /// default.
  external String color;

  /// Current button text color. Set to themeParams.button_text_color for the
  /// main button and themeParams.button_color for the secondary button by
  /// default.
  external String textColor;

  /// Shows whether the button is visible. Set to false by default.
  external bool isVisible;

  /// Shows whether the button is active. Set to true by default.
  external bool isActive;

  /// Bot API 7.10+ Shows whether the button has a shine effect. Set to false by default.
  external bool hasShineEffect;

  /// Bot API 7.10+ Position of the secondary button. Not defined for the main
  /// button. It applies only if both the main and secondary buttons are visible.
  /// Set to left by default.
  /// Supported values:
  /// - left, displayed to the left of the main button,
  /// - right, displayed to the right of the main button,
  /// - top, displayed above the main button,
  /// - bottom, displayed below the main button.
  external String position;

  /// Readonly. Shows whether the button is displaying a loading indicator.
  external bool get isProgressVisible;

  /// A method to set the button text.
  external void setText(String text);

  /// A method that sets the button's press event handler. An alias for
  /// Telegram.WebApp.onEvent('mainButtonClicked', callback)
  external void onClick(JSExportedDartFunction callback);

  /// A method that removes the button's press event handler. An alias for
  /// Telegram.WebApp.offEvent('mainButtonClicked', callback)
  external void offClick(JSExportedDartFunction callback);

  /// A method to make the button visible.
  /// Note that opening the Mini App from the attachment menu hides the main
  /// button until the user interacts with the Mini App interface.
  external void show();

  /// A method to hide the button.
  external void hide();

  /// A method to enable the button.
  external void enable();

  /// A method to disable the button.
  external void disable();

  /// A method to show a loading indicator on the button.
  /// It is recommended to display loading progress if the action tied to the
  /// button may take a long time. By default, the button is disabled while the
  /// action is in progress. If the parameter leaveActive=true is passed, the
  /// button remains enabled.
  external void showProgress(bool leaveActive);

  /// A method to hide the loading indicator.
  external void hideProgress();

  /// A method to set the button parameters. The params parameter is an object
  /// containing one or several fields that need to be changed:
  /// text - button text;
  /// color - button color;
  /// text_color - button text color;
  /// has_shine_effect - Bot API 7.10+ enable shine effect;
  /// position - position of the secondary button;
  /// is_active - enable the button;
  /// is_visible - show the button.
  external void setParams(BottomButtonParamsJSObject params);
}
