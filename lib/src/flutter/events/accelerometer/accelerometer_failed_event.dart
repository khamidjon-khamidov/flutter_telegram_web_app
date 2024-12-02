part of '../../../../telegram_web_app.dart';

/// **Bot API 8.0+**
///
/// Occurs if a request to start accelerometer tracking fails.
/// [eventHandler] receives an object with the single field error, describing the reason for the failure. Possible values for error are:
///
/// **UNSUPPORTED** – Accelerometer tracking is not supported on this device or platform.
class AccelerometerFailedEvent extends TelegramEvent {
  AccelerometerFailedEvent(void Function(String error) eventHandler)
      : super(
            TelegramEventType.gyroscopeFailed,
            (AccelerometerFailedResultJSObject result) {
              eventHandler(result.error.toDart);
            }.toJS);
}
