part of '../../../telegram_js_models.dart';

/// **Bot API 8.0+**
/// 
/// This object contains data about the current location.
@JS('LocationData')
extension type LocationDataJSObject._(JSObject _) implements JSObject {
  /// Latitude in degrees.
  external double get latitude;

  /// Longitude in degrees.
  external double get longitude;

  /// Altitude above sea level in meters. 
  /// null if altitude data is not available on the device.
  external double? get altitude;

  /// The direction the device is moving in degrees (0 = North, 90 = East, 180 = South, 270 = West). 
  /// null if course data is not available on the device.
  external double? get course;

  /// The speed of the device in m/s.
  /// null if speed data is not available on the device.
  external double? get speed;

  /// Accuracy of the latitude and longitude values in meters. 
  /// null if horizontal accuracy data is not available on the device.
  @JS('horizontal_accuracy')
  external double? get horizontalAccuracy;

  /// Accuracy of the altitude value in meters.
  /// null if vertical accuracy data is not available on the device.
  @JS('vertical_accuracy')
  external double? get verticalAccuracy;

  /// Accuracy of the course value in degrees.
  /// null if course accuracy data is not available on the device.
  @JS('course_accuracy')
  external double? get courseAccuracy;

  /// Accuracy of the speed value in m/s.
  /// null if speed accuracy data is not available on the device.
  @JS('speed_accuracy')
  external double? get speedAccuracy;
}
