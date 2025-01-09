part of '../../../../telegram_web_app.dart';

/// **Bot API 8.0+**
///
/// Occurs with the specified frequency after calling the start method, sending the current gyroscope data.
/// [eventHandler] receives no parameters, the current rotation rates can be received via this.x, this.y and this.z respectively.
class GyroscopeChangedEvent extends TelegramEvent {
  GyroscopeChangedEvent(void Function() eventHandler)
      : super(TelegramEventType.gyroscopeChanged, eventHandler);
}
