part of '../../../telegram_web_app.dart';

/// Bot API 7.2+ Occurs whenever the biometric token was updated.
/// eventHandler receives an object with the single field isUpdated, containing a boolean
/// indicating whether the token was updated.
class BiometricTokenUpdatedEvent extends TelegramEvent {
  BiometricTokenUpdatedEvent(void Function(BiometricTokenUpdatedPayload payload) eventHandler)
      : super(TelegramEventType.biometricTokenUpdated, eventHandler);
}

class BiometricTokenUpdatedPayload {
  final bool isUpdated;

  BiometricTokenUpdatedPayload(this.isUpdated);
}
