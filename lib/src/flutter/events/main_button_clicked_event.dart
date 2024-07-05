part of '../../../telegram_web_app.dart';

/// Occurs when the main button is pressed.
// [eventHandler] receives no parameters.
class MainButtonClickedEvent extends TelegramEvent {
  MainButtonClickedEvent(Function() eventHandler)
      : super(TelegramEventType.mainButtonClicked, eventHandler);
}
