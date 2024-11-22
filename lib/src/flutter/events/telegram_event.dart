part of '../../../telegram_web_app.dart';

/// https://core.telegram.org/bots/webapps#events-available-for-mini-apps
class TelegramEvent {
  TelegramEvent(this.eventType, this.eventHandler);

  final TelegramEventType eventType;
  final JSExportedDartFunction eventHandler;
}

/// https://core.telegram.org/bots/webapps#events-available-for-mini-apps
enum TelegramEventType {
  activated('activated'),
  deactivated('deactivated'),
  themeChanged('themeChanged'),
  viewportChanged('viewportChanged'),
  safeAreaChanged('safeAreaChanged'),
  contentSafeAreaChanged('contentSafeAreaChanged'),
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
  fullscreenChanged('fullscreenChanged'),
  fullscreenFailed('fullscreenFailed'),
  deviceOrientationStarted('deviceOrientationStarted'),
  deviceOrientationStopped('deviceOrientationStopped'),
  deviceOrientationChanged('deviceOrientationChanged'),
  deviceOrientationFailed('deviceOrientationFailed'),
  locationManagerUpdated('locationManagerUpdated'),
  locationRequested('locationRequested'),
  ;

  const TelegramEventType(this.eventName);

  final String eventName;
}
