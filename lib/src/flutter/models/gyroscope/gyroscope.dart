part of '../../../../telegram_web_app.dart';

/// **Bot API 8.0+**
/// 
/// This object provides access to gyroscope data on the device.
class Gyroscope {
  Gyroscope._();

  static Gyroscope? _instance;

  static Gyroscope get instance => _instance ??= Gyroscope._();

  /// Indicates whether gyroscope tracking is currently active.
  bool get isStarted => Telegram.WebApp.Gyroscope.isStarted;

  /// The current rotation rate around the X-axis, measured in rad/s.
  double get x => Telegram.WebApp.Gyroscope.x;

  /// The current rotation rate around Y-axis, measured in rad/s.
  double get y => Telegram.WebApp.Gyroscope.y;

  /// The current rotation rate around Z-axis, measured in rad/s.
  double get z => Telegram.WebApp.Gyroscope.z;

  /// Starts tracking gyroscope data using params of type [GyroscopeStartParams].
  /// If an optional callback parameter is provided, the callback function will be called with a boolean indicating whether tracking was successfully started.
  void start(
    GyroscopeStartParams params, {
    required void Function(bool success) onResult,
  }) =>
      Telegram.WebApp.Gyroscope.start(
        GyroscopeStartParamsJSObject(
          refreshRate: params.refreshRate,
        ),
        onResult.toJS,
      );

  /// Stops tracking gyroscope data. If an optional callback parameter is provided, the
  /// callback function will be called with a boolean indicating whether tracking was successfully stopped.
  void stop({required void Function(bool success) onResult}) =>
      Telegram.WebApp.Gyroscope.stop(onResult.toJS);
}
