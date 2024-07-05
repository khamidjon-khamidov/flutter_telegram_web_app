part of '../../../telegram_web_app.dart';

/// Occurrs when the back button is pressed.
/// [eventHandler] receives no parameters
class BackButtonClickedEvent extends TelegramEvent {
  BackButtonClickedEvent(Function() eventHandler)
      : super(TelegramEventType.backButtonClicked, eventHandler);
}
