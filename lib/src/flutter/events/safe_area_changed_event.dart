part of '../../../telegram_web_app.dart';

/// **Bot API 8.0+**
///
/// Occurs when the device's safe area insets change (e.g., due to orientation change or screen adjustments).
/// eventHandler receives no parameters. The current inset values can be accessed via [TelegramWebApp.safeAreaInset].
class SafeAreaChangedEvent extends TelegramEvent {
  SafeAreaChangedEvent(void Function() eventHandler)
      : super(TelegramEventType.safeAreaChanged, eventHandler.toJS);
}
