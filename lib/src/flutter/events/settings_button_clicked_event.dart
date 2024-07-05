part of '../../../telegram_web_app.dart';

/// Occurs when the Settings item in context menu is pressed.
// [eventHandler] receives no parameters.
class SettingsButtonClickedEvent extends TelegramEvent {
  SettingsButtonClickedEvent(Function() eventHandler)
      : super(TelegramEventType.settingsButtonClicked, eventHandler);
}
