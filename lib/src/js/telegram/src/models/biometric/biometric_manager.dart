part of '../../../telegram_js_models.dart';

@JS()
class BiometricManager {
  external bool get isInited;
  external bool get isBiometricAvailable;
  external String get biometricType;
  external bool get isAccessRequested;
  external bool get isAccessGranted;
  external bool get isBiometricTokenSaved;
  external String get deviceId;

  external Future<void> init([callback]);
  external Future<void> requestAccess(BiometricRequestAccessParams params, [callback]);
  external Future<void> authenticate(BiometricAuthenticateParams params, [callback]);
  external Future<void> updateBiometricToken(token, [callback]);
  external Future<void> openSettings();
}
