part of '../../../../telegram_web_app.dart';

/// **Bot API 8.0+**
///
/// Occurs when accelerometer tracking has started successfully.
/// [eventHandler] receives no parameters.
class AccelerometerStartedEvent extends TelegramEvent {
  AccelerometerStartedEvent(void Function() eventHandler)
      : super(TelegramEventType.accelerometerStarted, eventHandler);
}
