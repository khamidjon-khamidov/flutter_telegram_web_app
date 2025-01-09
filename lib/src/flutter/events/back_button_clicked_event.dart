part of '../../../telegram_web_app.dart';

/// Bot API 6.1+ Occurrs when the back button is pressed.
/// eventHandler receives no parameters.
class BackButtonClickedEvent extends TelegramEvent {
  BackButtonClickedEvent(void Function() eventHandler)
      : super(TelegramEventType.backButtonClicked, eventHandler);
}
