import 'package:js/js.dart';
import 'package:telegram_web_app/src/telegram/models/popup_button.dart';

@JS()
@anonymous
class PopupParams {
  external factory PopupParams({
    String? title,
    required String message,
    List<PopupButtonInternal>? buttons,
  });

  /// Optional. The text to be displayed in the popup title, 0-64 characters.
  external String get title;

  /// The message to be displayed in the body of the popup, 1-256 characters.
  external String get message;

  /// Optional. List of buttons to be displayed in the popup, 1-3 buttons.
  /// Set to [{“type”:“close”}] by default.
  external List<PopupButton>? get buttons;
}
