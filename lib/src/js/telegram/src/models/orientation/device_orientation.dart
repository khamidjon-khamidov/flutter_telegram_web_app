part of '../../../telegram_js_models.dart';

@JS('DeviceOrientation')
extension type DeviceOrientationJSObject._(JSObject _) implements JSObject {
  external bool get isStarted;

  external bool get absolute;

  external double get alpha;

  external double get beta;

  external double get gamma;

  external void start(
    DeviceOrientationStartParamsJSObject params,
    JSExportedDartFunction callback,
  );

  external void stop(JSExportedDartFunction callback);
}
