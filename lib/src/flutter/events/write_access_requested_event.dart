part of '../../../telegram_web_app.dart';

/// Occurs when the write permission was requested.
/// [eventHandler] receives an object with the single
/// field status containing one of the statuses:
/// - allowed – user granted write permission to the bot,
/// - cancelled – user declined this request.
class WriteAccessRequestedEvent extends TelegramEvent {
  WriteAccessRequestedEvent(Function(WriteAccessRequestedEventResult result) eventHandler)
      : super(TelegramEventType.writeAccessRequested, eventHandler);
}
