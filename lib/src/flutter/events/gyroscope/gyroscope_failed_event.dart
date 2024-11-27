part of '../../../../telegram_web_app.dart';

/// **Bot API 8.0+**
///
/// Occurs if a request to start gyroscope tracking fails.
/// eventHandler receives an object with the single field error, describing the reason for the failure. Possible values for error are:
///
/// **UNSUPPORTED** – Gyroscope tracking is not supported on this device or platform.
class GyroscopeFailedEvent extends TelegramEvent {
  GyroscopeFailedEvent(void Function(String error) eventHandler)
      : super(
            TelegramEventType.gyroscopeFailed,
            (GyroscopeFailedResultJSObject result) {
              eventHandler(result.error.toDart);
            }.toJS);
}
