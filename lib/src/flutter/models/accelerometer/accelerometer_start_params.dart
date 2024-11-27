part of '../../../../telegram_web_app.dart';

/// **Bot API 8.0+**
/// 
/// This object defines the parameters for starting accelerometer tracking.
class AccelerometerStartParams {
  /// The refresh rate in milliseconds, with acceptable
  /// values ranging from 20 to 1000. Set to 1000 by default. Note
  /// that refresh_rate may not be supported on all platforms, so
  /// the actual tracking frequency may differ from the specified value.
  final int? refreshRate;

  AccelerometerStartParams({
    this.refreshRate,
  });
}
