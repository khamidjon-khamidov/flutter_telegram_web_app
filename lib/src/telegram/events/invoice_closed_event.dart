import 'package:telegram_web_app/src/telegram/events/telegram_event.dart';

/// Occurrs when the opened invoice is closed.
// [eventHandler] receives an object with the two fields: url –
// invoice link provided and status – one of the invoice statuses:
// - paid – invoice was paid successfully,
// - cancelled – user closed this invoice without paying,
// - failed – user tried to pay, but the payment was failed,
// - pending – the payment is still processing. The bot will
// receive a service message about a successful payment when
// the payment is successfully paid.
class InvoiceClosedEvent extends TelegramEvent {
  InvoiceClosedEvent(Function(String url, String status) eventHandler)
      : super("invoiceClosed", eventHandler);
}
