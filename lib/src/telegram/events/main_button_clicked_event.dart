import 'package:telegram_web_app/src/telegram/events/telegram_event.dart';

/// Occurs when the main button is pressed.
// [eventHandler] receives no parameters.
class MainButtonClickedEvent extends TelegramEvent {
  MainButtonClickedEvent(Function() eventHandler)
      : super(TelegramEventType.mainButtonClicked, eventHandler);
}
