abstract class TelegramEvent {
  TelegramEvent(this.eventType, this.eventHandler);

  final String eventType;

  final Function eventHandler;
}
