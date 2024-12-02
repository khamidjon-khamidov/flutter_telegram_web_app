part of '../../../telegram_js_models.dart';

/// This object provides access to accelerometer data on the device.
extension type AccelerometerJSObject._(JSObject _) implements JSObject {

  /// Indicates whether accelerometer tracking is currently active.
  external bool get isStarted;

  /// The current acceleration in the X-axis, measured in m/s².
  external double get x;

  /// The current acceleration in the Y-axis, measured in m/s².
  external double get y;

  /// The current acceleration in the Z-axis, measured in m/s².
  external double get z;

  /// Starts tracking accelerometer data using params of type [AccelerometerStartParamsJSObject].
  /// If an optional callback parameter is provided, the callback function will be called with a boolean indicating whether tracking was successfully started.
  external void start(
    AccelerometerStartParamsJSObject params,
    JSExportedDartFunction callback,
  );

  /// Stops tracking accelerometer data. If an optional callback parameter is provided, the
  /// callback function will be called with a boolean indicating whether tracking was successfully stopped.
  external void stop(JSExportedDartFunction callback);
}
