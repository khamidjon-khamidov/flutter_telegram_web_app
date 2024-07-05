part of '../../../telegram_web_app.dart';

/// Occurs when the readTextFromClipboard method is called.
/// [eventHandler] receives an object with the single field data
/// containing text data from the clipboard. If the clipboard
/// contains non-text data, the field data will be an empty string.
/// If the Mini App has no access to the clipboard, the field data
/// will be null.
class ClipboardTextReceivedEvent extends TelegramEvent {
  ClipboardTextReceivedEvent(Function(String) eventHandler)
      : super(TelegramEventType.clipboardTextReceived, eventHandler);
}
