part of '../../../telegram_js_models.dart';

/// This object defines the parameters for starting gyroscope tracking.
@JS('GyroscopeStartParams')
extension type GyroscopeStartParamsJSObject._(JSObject _) implements JSObject {
  /// The refresh rate in milliseconds, with acceptable
  /// values ranging from 20 to 1000. Set to 1000 by default. Note
  /// that refresh_rate may not be supported on all platforms, so
  /// the actual tracking frequency may differ from the specified value.
  @JS('refresh_rate')
  external int? refreshRate;

  external factory GyroscopeStartParamsJSObject({
    @JS('refresh_rate')
    required int? refreshRate,
  });
}
