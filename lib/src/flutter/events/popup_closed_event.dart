part of '../../../telegram_web_app.dart';

/// Bot API 6.2+ Occurrs when the opened popup is closed.
/// eventHandler receives an object with the single field button_id – the value of the field
/// id of the pressed button. If no buttons were pressed, the field button_id will be null.
class PopupClosedEvent extends TelegramEvent {
  PopupClosedEvent(void Function(PopupClosedPayload payload) eventHandler)
      : super(
          TelegramEventType.popupClosed,
          (PopupClosedPayloadJSObject payload) {
            eventHandler(PopupClosedPayload(payload.button_id?.toDart));
          }.toJS,
        );
}

class PopupClosedPayload {
  final String? buttonId;

  PopupClosedPayload(this.buttonId);
}
