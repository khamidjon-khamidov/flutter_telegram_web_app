import 'package:telegram_web_app/src/telegram/events/telegram_event.dart';

/// Occurs when the QR code scanner catches a code with text data.
// [eventHandler] receives an object with the single field data containing
// text data from the QR code.
class QrTextReceivedEvent extends TelegramEvent {
  QrTextReceivedEvent(Function(String qrjText) eventHandler)
      : super(TelegramEventType.qrTextReceived, eventHandler);
}
