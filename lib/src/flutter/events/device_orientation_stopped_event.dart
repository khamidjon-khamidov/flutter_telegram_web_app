part of '../../../telegram_web_app.dart';

/// Occurs when device orientation tracking has stopped.
/// eventHandler receives no parameters.
class DeviceOrientationStoppedEvent extends TelegramEvent {
  DeviceOrientationStoppedEvent(void Function() eventHandler)
      : super(TelegramEventType.deviceOrientationStopped, eventHandler.toJS);
}
