part of '../../../../telegram_web_app.dart';

/// **Bot API 8.0+**
///
/// Occurs when the emoji status is successfully set.
/// [eventHandler] receives no parameters.
class EmojiStatusSetEvent extends TelegramEvent {
  EmojiStatusSetEvent(void Function() eventHandler)
      : super(TelegramEventType.emojiStatusSet, eventHandler);
}
