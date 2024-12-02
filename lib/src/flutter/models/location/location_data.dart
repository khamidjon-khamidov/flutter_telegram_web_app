part of '../../../../telegram_web_app.dart';

/// **Bot API 8.0+**
///
/// This object contains data about the current location.
class LocationData {
  /// Latitude in degrees.
  final double latitude;

  /// Longitude in degrees.
  final double longitude;

  /// Altitude above sea level in meters.
  /// null if altitude data is not available on the device.
  final double? altitude;

  /// The direction the device is moving in degrees (0 = North, 90 = East, 180 = South, 270 = West).
  /// null if course data is not available on the device.
  final double? course;

  /// The speed of the device in m/s.
  /// null if speed data is not available on the device.
  final double? speed;

  /// Accuracy of the latitude and longitude values in meters.
  /// null if horizontal accuracy data is not available on the device.
  final double? horizontalAccuracy;

  /// Accuracy of the altitude value in meters.
  /// null if vertical accuracy data is not available on the device.
  final double? verticalAccuracy;

  /// Accuracy of the course value in degrees.
  /// null if course accuracy data is not available on the device.
  final double? courseAccuracy;

  /// Accuracy of the speed value in m/s.
  /// null if speed accuracy data is not available on the device.
  final double? speedAccuracy;

  LocationData(
      {required this.latitude,
      required this.longitude,
      this.altitude,
      this.course,
      this.speed,
      this.horizontalAccuracy,
      this.verticalAccuracy,
      this.courseAccuracy,
      this.speedAccuracy});

  LocationData.from(LocationDataJSObject jsObject)
      : this(
            latitude: jsObject.latitude,
            longitude: jsObject.longitude,
            altitude: jsObject.altitude,
            course: jsObject.course,
            speed: jsObject.speed,
            horizontalAccuracy: jsObject.horizontalAccuracy,
            verticalAccuracy: jsObject.verticalAccuracy,
            courseAccuracy: jsObject.courseAccuracy,
            speedAccuracy: jsObject.speedAccuracy);

  @override
  String toString() {
    return 'LocationData{'
        'latitude: $latitude, '
        'longitude: $longitude, '
        'altitude: $altitude, '
        'course: $course, '
        'speed: $speed, '
        'horizontalAccuracy: $horizontalAccuracy, '
        'verticalAccuracy: $verticalAccuracy, '
        'courseAccuracy: $courseAccuracy, '
        'speedAccuracy: $speedAccuracy'
        '}';
  }
}
