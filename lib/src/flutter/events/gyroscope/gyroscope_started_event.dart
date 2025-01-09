part of '../../../../telegram_web_app.dart';

/// **Bot API 8.0+**
///
/// Occurs when gyroscope tracking has started successfully.
/// [eventHandler] receives no parameters.
class GyroscopeStartedEvent extends TelegramEvent {
  GyroscopeStartedEvent(void Function() eventHandler)
      : super(TelegramEventType.gyroscopeStarted, eventHandler);
}
