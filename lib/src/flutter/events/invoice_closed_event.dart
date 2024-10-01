part of '../../../telegram_web_app.dart';

/// Bot API 6.1+ Occurrs when the opened invoice is closed.
/// eventHandler receives an object with the two fields: url – invoice link provided and
/// status – one of the invoice statuses:
/// - paid – invoice was paid successfully,
/// - cancelled – user closed this invoice without paying,
/// - failed – user tried to pay, but the payment was failed,
/// - pending – the payment is still processing. The bot will receive a service message
/// about a successful payment when the payment is successfully paid.
class InvoiceClosedEvent extends TelegramEvent {
  InvoiceClosedEvent(void Function(InvoiceClosedPayload payload) eventHandler)
      : super(
          TelegramEventType.invoiceClosed,
          (InvoiceClosedPayloadJSObject payload) {
            eventHandler(InvoiceClosedPayload(
              payload.url.toDart,
              payload.status.toDart,
            ));
          }.toJS,
        );
}

class InvoiceClosedPayload {
  final String url;
  final String status;

  InvoiceClosedPayload(this.url, this.status);
}
