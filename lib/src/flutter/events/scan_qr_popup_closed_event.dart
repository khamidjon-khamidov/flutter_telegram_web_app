part of '../../../telegram_web_app.dart';

/// Bot API 7.7+ Occurs when the QR code scanner popup is closed by the user.
/// eventHandler receives no parameters.
class ScanQrPopupClosedEvent extends TelegramEvent {
  ScanQrPopupClosedEvent(void Function() eventHandler)
      : super(TelegramEventType.scanQrPopupClosed, eventHandler);
}
