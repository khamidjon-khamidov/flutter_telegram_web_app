part of '../../../telegram_web_app.dart';

/// **Bot API 8.0+**
///
/// Occurs when the Mini App becomes active (e.g., opened from minimized state or selected among tabs).
/// eventHandler receives no parameters.
class ActivatedEvent extends TelegramEvent {
  ActivatedEvent(void Function() eventHandler)
      : super(TelegramEventType.activated, eventHandler.toJS);
}
