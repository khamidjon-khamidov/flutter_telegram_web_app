part of '../../../telegram_web_app.dart';

/// Bot API 7.10+ Occurs when the secondary button is pressed.
/// eventHandler receives no parameters
class SecondaryButtonClickedEvent extends TelegramEvent {
  SecondaryButtonClickedEvent(void Function() eventHandler)
      : super(TelegramEventType.secondaryButtonClicked, eventHandler);
}
