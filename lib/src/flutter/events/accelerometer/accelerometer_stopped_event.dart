part of '../../../../telegram_web_app.dart';

/// Occurs when accelerometer tracking has stopped.
/// [eventHandler] receives no parameters.
class AccelerometerStoppedEvent extends TelegramEvent {
  AccelerometerStoppedEvent(void Function() eventHandler)
      : super(TelegramEventType.accelerometerStopped, eventHandler);
}
