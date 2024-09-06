part of '../../../telegram_js_models.dart';

@JS()
@anonymous
class BiometricAuthenticateParams {
  external String? get reason;

  external factory BiometricAuthenticateParams({
    required String? reason,
  });
}
