import 'package:telegram_web_app/src/telegram/events/telegram_event.dart';

/// Occurrs when the back button is pressed.
/// [eventHandler] receives no parameters
class BackButtonClickedEvent extends TelegramEvent {
  BackButtonClickedEvent(Function() eventHandler) : super("backButtonClicked", eventHandler);
}
