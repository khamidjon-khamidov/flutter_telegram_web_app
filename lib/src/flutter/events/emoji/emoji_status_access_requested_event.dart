part of '../../../../telegram_web_app.dart';

/// **Bot API 8.0+**
///
/// Occurs when the write permission was requested.
/// [eventHandler] receives an object with the single field status containing one of the statuses:
///
/// - **allowed** – user granted emoji status permission to the bot,
/// - **cancelled** – user declined this request.
class EmojiStatusAccessRequestedEvent extends TelegramEvent {
  EmojiStatusAccessRequestedEvent(void Function(String status) eventHandler)
      : super(
            TelegramEventType.emojiStatusAccessRequested,
            (EmojiStatusAccessRequestedResultJSObject result) {
              eventHandler(result.status.toDart);
            }.toJS);
}
