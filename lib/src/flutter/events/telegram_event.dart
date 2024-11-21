part of '../../../telegram_web_app.dart';

/// https://core.telegram.org/bots/webapps#events-available-for-mini-apps
class TelegramEvent {
  TelegramEvent(this.eventType, this.eventHandler);

  final TelegramEventType eventType;
  final JSExportedDartFunction eventHandler;
}

/// https://core.telegram.org/bots/webapps#events-available-for-mini-apps
enum TelegramEventType {
  themeChanged('themeChanged'),
  viewportChanged('viewportChanged'),
  mainButtonClicked('mainButtonClicked'),
  secondaryButtonClicked('secondaryButtonClicked'),
  backButtonClicked('backButtonClicked'),
  settingsButtonClicked('settingsButtonClicked'),
  invoiceClosed('invoiceClosed'),
  popupClosed('popupClosed'),
  qrTextReceived('qrTextReceived'),
  scanQrPopupClosed('scanQrPopupClosed'),
  clipboardTextReceived('clipboardTextReceived'),
  writeAccessRequested('writeAccessRequested'),
  contactRequested('contactRequested'),
  biometricManagerUpdated('biometricManagerUpdated'),
  biometricAuthRequested('biometricAuthRequested'),
  biometricTokenUpdated('biometricTokenUpdated'),
  deviceOrientationStarted('deviceOrientationStarted'),
  deviceOrientationStopped('deviceOrientationStopped'),
  deviceOrientationChanged('deviceOrientationChanged'),
  deviceOrientationFailed('deviceOrientationFailed');

  const TelegramEventType(this.eventName);

  final String eventName;
}
