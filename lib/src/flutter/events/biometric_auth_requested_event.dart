part of '../../../telegram_web_app.dart';

/// Bot API 7.2+ Occurs whenever biometric authentication was requested.
/// eventHandler receives an object with the field isAuthenticated containing a boolean
/// indicating whether the user was authenticated successfully. If isAuthenticated is true,
/// the field biometricToken will contain the biometric token stored in secure storage on
/// the device.
class BiometricAuthRequestedEvent extends TelegramEvent {
  BiometricAuthRequestedEvent(void Function(BiometricAuthRequestedPayload payload) eventHandler)
      : super(
          TelegramEventType.biometricAuthRequested,
          (BiometricAuthRequestedPayloadJSObject payload) {
            eventHandler.call(BiometricAuthRequestedPayload(
              payload.isAuthenticated.toDart,
              payload.biometricToken?.toDart,
            ));
          }.toJS,
        );
}

class BiometricAuthRequestedPayload {
  final bool isAuthenticated;
  final String? biometricToken;

  BiometricAuthRequestedPayload(this.isAuthenticated, this.biometricToken);
}
