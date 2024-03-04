/// https://core.telegram.org/bots/webapps#events-available-for-mini-apps
abstract class TelegramEvent {
  TelegramEvent(this.eventType, this.eventHandler);

  final TelegramEventType eventType;

  final Function eventHandler;
}

/// https://core.telegram.org/bots/webapps#events-available-for-mini-apps
enum TelegramEventType {
  themeChanged,
  viewportChanged,
  mainButtonClicked,
  backButtonClicked,
  settingsButtonClicked,
  invoiceClosed,
  popupClosed,
  qrTextReceived,
  clipboardTextReceived,
  writeAccessRequested,
  contactRequested
}
