part of '../../../telegram_js_models.dart';

/// This object provides access to gyroscope data on the device.
extension type GyroscopeJSObject._(JSObject _) implements JSObject {

  /// Indicates whether gyroscope tracking is currently active.
  external bool get isStarted;

  /// The current rotation rate around the X-axis, measured in rad/s.
  external double get x;

  /// The current rotation rate around Y-axis, measured in rad/s.
  external double get y;

  /// The current rotation rate around Z-axis, measured in rad/s.
  external double get z;

  /// Starts tracking gyroscope data using params of type [GyroscopeStartParamsJSObject].
  /// If an optional callback parameter is provided, the callback function will be called with a boolean indicating whether tracking was successfully started.
  external void start(
    GyroscopeStartParamsJSObject params,
    JSExportedDartFunction callback,
  );

  /// Stops tracking gyroscope data. If an optional callback parameter is provided, the
  /// callback function will be called with a boolean indicating whether tracking was successfully stopped.
  external void stop(JSExportedDartFunction callback);
}
