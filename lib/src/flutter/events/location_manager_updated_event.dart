part of '../../../telegram_web_app.dart';

/// **Bot API 8.0+**
///
/// Occurs whenever LocationManager object is changed.
/// eventHandler receives no parameters.
class LocationManagerUpdatedEvent extends TelegramEvent {
  LocationManagerUpdatedEvent(void Function() eventHandler)
      : super(TelegramEventType.locationManagerUpdated, eventHandler.toJS);
}
