part of '../../../telegram_web_app.dart';

/// **Bot API 8.0+**
///
/// Occurs when the message is successfully shared by the user.
/// eventHandler receives no parameters.
class ShareMessageSentEvent extends TelegramEvent {
  ShareMessageSentEvent(void Function() eventHandler)
      : super(TelegramEventType.shareMessageSent, eventHandler);
}
