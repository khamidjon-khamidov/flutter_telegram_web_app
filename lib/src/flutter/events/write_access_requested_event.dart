part of '../../../telegram_web_app.dart';

/// Bot API 6.9+ Occurs when the write permission was requested.
/// eventHandler receives an object with the single field status containing one of the
/// statuses:
/// - allowed – user granted write permission to the bot,
/// - cancelled – user declined this request.
class WriteAccessRequestedEvent extends TelegramEvent {
  WriteAccessRequestedEvent(void Function(WriteAccessRequestedPayload result) eventHandler)
      : super(
          TelegramEventType.writeAccessRequested,
          (WriteAccessRequestedPayloadJSObject payload) {
            eventHandler.call(WriteAccessRequestedPayload(payload.status.toDart));
          }.toJS,
        );
}

class WriteAccessRequestedPayload {
  final String status;

  WriteAccessRequestedPayload(this.status);
}
