part of '../../../telegram_js_models.dart';

@JS('BiometricAuthenticateParams')
extension type BiometricAuthenticateParamsJSObject._(JSObject _) implements JSObject {
  external factory BiometricAuthenticateParamsJSObject({
    required String? reason,
  });

  external String? get reason;
}
