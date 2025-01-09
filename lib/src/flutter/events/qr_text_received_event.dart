part of '../../../telegram_web_app.dart';

/// Bot API 6.4+ Occurs when the QR code scanner catches a code with text data.
/// eventHandler receives an object with the single field data containing text data from
/// the QR code.
class QrTextReceivedEvent extends TelegramEvent {
  QrTextReceivedEvent(void Function(QrTextReceivedPayload payload) eventHandler)
      : super(TelegramEventType.qrTextReceived, eventHandler);
}

class QrTextReceivedPayload {
  final String data;

  QrTextReceivedPayload(this.data);
}
