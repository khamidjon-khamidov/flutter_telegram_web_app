import 'package:telegram_web_app/src/telegram/events/telegram_event.dart';

/// Occurs when the opened popup is closed.
// [eventHandler] receives an object with the
// single field [button_id] – the value of the
// field id of the pressed button. If no buttons
// were pressed, the field button_id will be null.
class PopupClosedEvent extends TelegramEvent {
  PopupClosedEvent(Function(String? buttonId) eventHandler) : super("popupClosed", eventHandler);
}
