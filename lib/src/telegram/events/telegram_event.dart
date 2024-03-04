abstract class TelegramEvent {
  TelegramEvent(this.eventType, this.eventHandler);

  final TelegramEventType eventType;

  final Function eventHandler;
}

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
