part of '../../../../telegram_web_app.dart';

/// This object provides access to orientation data on the device.
class DeviceOrientation {
  DeviceOrientation._();

  static DeviceOrientation? _instance;

  static DeviceOrientation get instance => _instance ??= DeviceOrientation._();

  /// Indicates whether device orientation tracking is currently active.
  bool get isStarted => Telegram.WebApp.DeviceOrientation.isStarted;

  /// A boolean that indicates whether or not the device is providing orientation data in absolute values.
  bool get absolute => Telegram.WebApp.DeviceOrientation.absolute;

  /// The rotation around the Z-axis, measured in radians.
  double get alpha => Telegram.WebApp.DeviceOrientation.alpha;

  /// The rotation around the X-axis, measured in radians.
  double get beta => Telegram.WebApp.DeviceOrientation.beta;

  /// The rotation around the Y-axis, measured in radians.
  double get gamma => Telegram.WebApp.DeviceOrientation.gamma;

  /// Starts tracking device orientation data using params of type DeviceOrientationStartParams.
  /// If an optional callback parameter is provided, the callback function will be called with
  /// a boolean indicating whether tracking was successfully started.
  void start(
    DeviceOrientationStartParams params, {
    required void Function(bool success) onResult,
  }) =>
      Telegram.WebApp.DeviceOrientation.start(
        DeviceOrientationStartParamsJSObject(
          refresh_rate: params.refreshRate,
          need_absolute: params.needAbsolute,
        ),
        onResult.toJS,
      );

  /// Stops tracking device orientation data. If an optional callback parameter is provided, the
  /// callback function will be called with a boolean indicating whether tracking was successfully stopped.
  void stop({required void Function(bool success) onResult}) =>
      Telegram.WebApp.DeviceOrientation.stop(onResult.toJS);
}
