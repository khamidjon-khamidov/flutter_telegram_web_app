part of '../../../../telegram_web_app.dart';

/// **Bot API 8.0+**
///
/// Occurs if setting the emoji status fails.
/// [eventHandler] receives an object with the single field error, describing the reason for the failure.
/// Possible values for error are:
///
/// - **UNSUPPORTED** – The feature is not supported by the client.
/// - **SUGGESTED_EMOJI_INVALID** – One or more emoji identifiers are invalid.
/// - **DURATION_INVALID** – The specified duration is invalid.
/// - **USER_DECLINED** – The user closed the dialog without setting a status.
/// - **SERVER_ERROR** – A server error occurred when attempting to set the status.
/// - **UNKNOWN_ERROR** – An unknown error occurred.
class EmojiStatusFailedEvent extends TelegramEvent {
  EmojiStatusFailedEvent(void Function(String error) eventHandler)
      : super(TelegramEventType.emojiStatusFailed, (EmojiStatusFailedResultJSObject result) {
          eventHandler(result.error.toDart);
        });
}
