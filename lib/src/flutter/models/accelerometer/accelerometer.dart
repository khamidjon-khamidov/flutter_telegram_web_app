part of '../../../../telegram_web_app.dart';

/// **Bot API 8.0+**
/// 
/// This object provides access to accelerometer data on the device.
class Accelerometer {
  Accelerometer._();

  static Accelerometer? _instance;

  static Accelerometer get instance => _instance ??= Accelerometer._();

  /// Indicates whether accelerometer tracking is currently active.
  bool get isStarted => Telegram.WebApp.Accelerometer.isStarted;

  /// The current acceleration in the X-axis, measured in m/s².
  double get x => Telegram.WebApp.Accelerometer.x;

  /// The current acceleration in the Y-axis, measured in m/s².
  double get y => Telegram.WebApp.Accelerometer.y;

  /// The current acceleration in the Z-axis, measured in m/s².
  double get z => Telegram.WebApp.Accelerometer.z;

  /// Starts tracking accelerometer data using params of type [AccelerometerStartParams].
  /// If an optional callback parameter is provided, the callback function will be called with a boolean indicating whether tracking was successfully started.
  void start(
    AccelerometerStartParams params, {
    required void Function(bool success) onResult,
  }) =>
      Telegram.WebApp.Accelerometer.start(
        AccelerometerStartParamsJSObject(
          refreshRate: params.refreshRate,
        ),
        onResult.toJS,
      );

  /// Stops tracking accelerometer data. If an optional callback parameter is provided, the
  /// callback function will be called with a boolean indicating whether tracking was successfully stopped.
  void stop({required void Function(bool success) onResult}) =>
      Telegram.WebApp.Accelerometer.stop(onResult.toJS);
}
