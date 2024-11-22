part of '../../../telegram_web_app.dart';

/// **Bot API 8.0+**
///
/// Occurs when the user responds to the file download request.
/// eventHandler receives an object with the single field status containing one of the statuses:
/// - downloading – the file download has started,
/// - cancelled – user declined this request.
class FileDownloadRequestedEvent extends TelegramEvent {
  FileDownloadRequestedEvent(void Function(String status) eventHandler)
      : super(
            TelegramEventType.fileDownloadRequested,
            (FileDownloadResultJSObject result) {
              eventHandler(result.status.toDart);
            }.toJS);
}
