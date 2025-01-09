part of '../../../../telegram_web_app.dart';

/// **Bot API 8.0+**
///
/// Occurs with the specified frequency after calling the start method, sending the current accelerometer data.
/// [eventHandler] receives no parameters, the current acceleration values can be received via this.x, this.y and this.z respectively.
class AccelerometerChangedEvent extends TelegramEvent {
  AccelerometerChangedEvent(void Function() eventHandler)
      : super(TelegramEventType.accelerometerChanged, eventHandler);
}
