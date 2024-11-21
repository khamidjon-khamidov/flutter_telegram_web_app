part of '../../../telegram_web_app.dart';

/// Occurs with the specified frequency after calling the start method,
/// sending the current orientation data.eventHandler receives no parameters,
/// the current device orientation values can be received via this.alpha,
/// this.beta and this.gamma respectively.
class DeviceOrientationStartedEvent extends TelegramEvent {
  DeviceOrientationStartedEvent(void Function() eventHandler)
      : super(TelegramEventType.deviceOrientationStarted, eventHandler.toJS);
}
