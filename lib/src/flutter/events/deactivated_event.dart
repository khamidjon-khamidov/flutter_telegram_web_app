part of '../../../telegram_web_app.dart';

/// **Bot API 8.0+**
///
/// Occurs when the Mini App becomes inactive (e.g., minimized or moved to an inactive tab).
/// eventHandler receives no parameters.
class DeactivatedEvent extends TelegramEvent {
  DeactivatedEvent(void Function() eventHandler)
      : super(TelegramEventType.deactivated, eventHandler.toJS);
}
