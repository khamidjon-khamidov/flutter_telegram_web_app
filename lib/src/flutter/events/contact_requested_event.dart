part of '../../../telegram_web_app.dart';

/// Occurs when the user's phone number was requested.
/// [eventHandler] receives an object with the single field
/// status containing one of the statuses:
/// - sent – user shared their phone number with the bot,
/// - cancelled – user declined this request.
class ContactRequestedEvent extends TelegramEvent {
  ContactRequestedEvent(Function(String status) eventHandler)
      : super(TelegramEventType.contactRequested, eventHandler);
}
