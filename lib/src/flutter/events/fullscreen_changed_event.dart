part of '../../../telegram_web_app.dart';

/// **Bot API 8.0+**
///
/// Occurs whenever the Mini App enters or exits fullscreen mode.
/// eventHandler receives no parameters. The current fullscreen state can be checked via [TelegramWebApp.isFullscreen].
class FullscreenChangedEvent extends TelegramEvent {
  FullscreenChangedEvent(void Function() eventHandler)
      : super(TelegramEventType.fullscreenChanged, eventHandler.toJS);
}
