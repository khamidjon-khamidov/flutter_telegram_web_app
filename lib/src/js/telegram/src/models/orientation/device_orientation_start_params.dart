part of '../../../telegram_js_models.dart';

@JS('DeviceOrientationStartParams')
extension type DeviceOrientationStartParamsJSObject._(JSObject _) implements JSObject {
  external factory DeviceOrientationStartParamsJSObject({
    required int? refresh_rate,
    required bool? need_absolute,
  });

  external int? get refresh_rate;

  external bool? get need_absolute;
}
