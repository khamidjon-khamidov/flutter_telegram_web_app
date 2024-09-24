part of '../../../telegram_web_app.dart';

/// Bot API 7.2+ Occurs whenever BiometricManager object is changed.
/// eventHandler receives no parameters.
class BiometricManagerUpdatedEvent extends TelegramEvent {
  BiometricManagerUpdatedEvent(void Function() eventHandler)
      : super(TelegramEventType.biometricManagerUpdated, eventHandler.toJS);
}
