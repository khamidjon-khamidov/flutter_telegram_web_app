part of '../../../telegram_web_app.dart';

/// **Bot API 8.0+**
///
/// Occurs if sharing the message fails.
/// eventHandler receives an object with the single field error,
/// describing the reason for the failure. Possible values for error are:
/// UNSUPPORTED – The feature is not supported by the client.
/// MESSAGE_EXPIRED – The message could not be retrieved because it has expired.
/// MESSAGE_SEND_FAILED – An error occurred while attempting to send the message.
/// USER_DECLINED – The user closed the dialog without sharing the message.
/// UNKNOWN_ERROR – An unknown error occurred.
class ShareMessageFailedEvent extends TelegramEvent {
  ShareMessageFailedEvent(void Function(String error) eventHandler)
      : super(TelegramEventType.shareMessageFailed, eventHandler);
}
