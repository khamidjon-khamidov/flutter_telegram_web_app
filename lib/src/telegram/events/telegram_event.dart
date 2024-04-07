/// https://core.telegram.org/bots/webapps#events-available-for-mini-apps
abstract class TelegramEvent {
  TelegramEvent(this.eventType, this.eventHandler);

  final TelegramEventType eventType;

  final Function eventHandler;
}

/// https://core.telegram.org/bots/webapps#events-available-for-mini-apps
enum TelegramEventType {
  themeChanged('themeChanged'),
  viewportChanged('viewportChanged'),
  mainButtonClicked('mainButtonClicked'),
  backButtonClicked('backButtonClicked'),
  settingsButtonClicked('settingsButtonClicked'),
  invoiceClosed('invoiceClosed'),
  popupClosed('popupClosed'),
  qrTextReceived('qrTextReceived'),
  clipboardTextReceived('clipboardTextReceived'),
  writeAccessRequested('writeAccessRequested'),
  contactRequested('contactRequested');

  const TelegramEventType(this.eventName);
  final String eventName;
}
