part of '../../../../telegram_web_app.dart';

/// This object defines the parameters for starting device orientation tracking.
class DeviceOrientationStartParams {
  /// Optional. The refresh rate in milliseconds, with acceptable
  /// values ranging from 20 to 1000. Set to 1000 by default. Note
  /// that refresh_rate may not be supported on all platforms, so
  /// the actual tracking frequency may differ from the specified value.
  final int? refreshRate;

  /// Optional. Pass true to receive absolute orientation data, allowing
  /// you to determine the device's attitude relative to magnetic north.
  /// Use this option if implementing features like a compass in your app.
  /// If relative data is sufficient, pass false. Set to false by default.
  ///
  /// Note: Keep in mind that some devices may not support absolute
  /// orientation data. In such cases, you will receive relative data even
  /// if need_absolute=true is passed. Check the DeviceOrientation.absolute
  /// parameter to determine whether the data provided is absolute or
  /// relative.
  final bool? needAbsolute;

  DeviceOrientationStartParams({
    this.refreshRate,
    this.needAbsolute,
  });
}
