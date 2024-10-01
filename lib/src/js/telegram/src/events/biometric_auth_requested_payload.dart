part of '../../telegram_js_models.dart';

@JS()
extension type BiometricAuthRequestedPayloadJSObject._(JSObject _) implements JSObject {
  external JSBoolean get isAuthenticated;
  external JSString? get biometricToken;
}
