part of '../../../telegram_web_app.dart';

/// Occurs if a request to start device orientation tracking fails.
/// eventHandler receives an object with the single field error,
/// describing the reason for the failure. Possible values for error are:
/// 
/// **UNSUPPORTED** – Device orientation tracking is not supported on this device or platform.
class DeviceOrientationFailedEvent extends TelegramEvent {
  DeviceOrientationFailedEvent(void Function(String error) eventHandler)
      : super(
            TelegramEventType.deviceOrientationFailed,
            (DeviceOrientationFailedResultJSObject result) {
              eventHandler(result.error.toDart);
            }.toJS);
}
