part of '../../../telegram_web_app.dart';

/// **Bot API 8.0+**
///
/// Occurs when the Mini App is successfully added to the home
/// screen.
/// eventHandler receives no parameters.
class HomeScreenAddedEvent extends TelegramEvent {
  HomeScreenAddedEvent(void Function() eventHandler)
      : super(TelegramEventType.homeScreenAdded, eventHandler.toJS);
}
