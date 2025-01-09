part of '../../../telegram_web_app.dart';

/// **Bot API 8.0+**
///
/// Occurs when the safe area for content changes (e.g., due to orientation change or screen adjustments).
/// eventHandler receives no parameters. The current inset values can be accessed via [TelegramWebApp.contentSafeAreaInset].
class ContentSafeAreaChangedEvent extends TelegramEvent {
  ContentSafeAreaChangedEvent(void Function() eventHandler)
      : super(TelegramEventType.contentSafeAreaChanged, eventHandler);
}
