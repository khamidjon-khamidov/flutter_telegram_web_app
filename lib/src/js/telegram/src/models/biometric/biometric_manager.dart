part of '../../../telegram_js_models.dart';

extension type BiometricManagerJSObject._(JSObject _) implements JSObject {
  external bool get isInited;

  external bool get isBiometricAvailable;

  external String get biometricType;

  external bool get isAccessRequested;

  external bool get isAccessGranted;

  external bool get isBiometricTokenSaved;

  external String get deviceId;

  external BiometricManagerJSObject init([JSExportedDartFunction? callback]);

  external BiometricManagerJSObject requestAccess(BiometricRequestAccessParamsJSObject params, [JSExportedDartFunction? callback]);

  external BiometricManagerJSObject authenticate(BiometricAuthenticateParamsJSObject params, [JSExportedDartFunction? callback]);

  external BiometricManagerJSObject updateBiometricToken(String token, [JSExportedDartFunction? callback]);

  external BiometricManagerJSObject openSettings();
}
