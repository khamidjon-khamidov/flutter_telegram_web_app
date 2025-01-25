part of '../../../telegram_web_app.dart';

/// **Bot API 8.0+**
///
/// Occurs if a request to enter fullscreen mode fails.
/// eventHandler receives an object with the single field error, describing the reason for the failure. Possible values for error are:
///
/// **UNSUPPORTED** – Fullscreen mode is not supported on this device or platform.
///
/// **ALREADY_FULLSCREEN** – The Mini App is already in fullscreen mode.
class FullscreenFailedEvent extends TelegramEvent {
  FullscreenFailedEvent(void Function(String error) eventHandler)
      : super(TelegramEventType.fullscreenFailed, eventHandler);
}
