import 'package:telegram_web_app/src/telegram/events/telegram_event.dart';

/// Occurs whenever theme settings are changed in the user's
/// Telegram app (including switching to night mode).
// [eventHandler] receives no parameters, new theme settings
// and color scheme can be received via this.themeParams and
// this.colorScheme respectively.
class ThemeChangedEvent extends TelegramEvent {
  ThemeChangedEvent(Function() eventHandler) : super(TelegramEventType.themeChanged, eventHandler);
}
