part of '../../../telegram_web_app.dart';

/// Bot API 6.1+ Occurrs when the Settings item in context menu is pressed.
/// eventHandler receives no parameters.
class SettingsButtonClickedEvent extends TelegramEvent {
  SettingsButtonClickedEvent(void Function() eventHandler)
      : super(TelegramEventType.settingsButtonClicked, eventHandler);
}
