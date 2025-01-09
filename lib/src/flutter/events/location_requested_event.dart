part of '../../../telegram_web_app.dart';

/// **Bot API 8.0+**
///
/// Occurs when location data is requested.
/// eventHandler receives an object with the single field [locationData] of type [LocationData], containing the current location information.
class LocationRequestedEvent extends TelegramEvent {
  LocationRequestedEvent(void Function(LocationData locationData) eventHandler)
      : super(TelegramEventType.locationRequested, eventHandler);
}
