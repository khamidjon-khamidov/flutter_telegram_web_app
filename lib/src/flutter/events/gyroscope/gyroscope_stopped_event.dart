part of '../../../../telegram_web_app.dart';

/// Occurs when gyroscope tracking has stopped.
/// [eventHandler] receives no parameters.
class GyroscopeStoppedEvent extends TelegramEvent {
  GyroscopeStoppedEvent(void Function() eventHandler)
      : super(TelegramEventType.gyroscopeStopped, eventHandler);
}
