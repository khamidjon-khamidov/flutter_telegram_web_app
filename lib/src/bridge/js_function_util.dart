import 'dart:js_interop';

import 'package:telegram_web_app/src/js/telegram/telegram_js_models.dart';
import 'package:telegram_web_app/telegram_web_app.dart';

class JsUtil {
  static JSExportedDartFunction toJsFunction(TelegramEvent event) {
    return switch (event.eventType) {
      TelegramEventType.activated => (event.eventHandler as void Function()).toJS,
      TelegramEventType.deactivated => (event.eventHandler as void Function()).toJS,
      TelegramEventType.themeChanged => (event.eventHandler as void Function()).toJS,
      TelegramEventType.viewportChanged => (ViewportChangedPayloadJSObject payload) {
          event.eventHandler(ViewportChangedPayload(payload.isStateStable.toDart));
        }.toJS,
      TelegramEventType.safeAreaChanged => (event.eventHandler as void Function()).toJS,
      TelegramEventType.contentSafeAreaChanged => (event.eventHandler as void Function()).toJS,
      TelegramEventType.mainButtonClicked => (event.eventHandler as void Function()).toJS,
      TelegramEventType.secondaryButtonClicked => (event.eventHandler as void Function()).toJS,
      TelegramEventType.backButtonClicked => (event.eventHandler as void Function()).toJS,
      TelegramEventType.settingsButtonClicked => (event.eventHandler as void Function()).toJS,
      TelegramEventType.invoiceClosed => (InvoiceClosedPayloadJSObject payload) {
          event.eventHandler(InvoiceClosedPayload(
            payload.url.toDart,
            payload.status.toDart,
          ));
        }.toJS,
      TelegramEventType.popupClosed => (PopupClosedPayloadJSObject payload) {
          event.eventHandler(PopupClosedPayload(payload.button_id?.toDart));
        }.toJS,
      TelegramEventType.qrTextReceived => (QrTextReceivedPayloadJSObject payload) {
          event.eventHandler(QrTextReceivedPayload(payload.data.toDart));
        }.toJS,
      TelegramEventType.scanQrPopupClosed => (event.eventHandler as void Function()).toJS,
      TelegramEventType.clipboardTextReceived => (ClipboardTextReceivedPayloadJSObject payload) {
          event.eventHandler(ClipboardTextReceivedPayload(payload.data?.toDart));
        }.toJS,
      TelegramEventType.writeAccessRequested => (WriteAccessRequestedPayloadJSObject payload) {
          event.eventHandler.call(WriteAccessRequestedPayload(payload.status.toDart));
        }.toJS,
      TelegramEventType.contactRequested => (ContactRequestedPayloadJSObject payload) {
          event.eventHandler(ContactRequestedPayload(payload.status.toDart));
        }.toJS,
      TelegramEventType.biometricManagerUpdated => (event.eventHandler as void Function()).toJS,
      TelegramEventType.biometricAuthRequested => (BiometricAuthRequestedPayloadJSObject payload) {
          event.eventHandler.call(BiometricAuthRequestedPayload(
            payload.isAuthenticated.toDart,
            payload.biometricToken?.toDart,
          ));
        }.toJS,
      TelegramEventType.biometricTokenUpdated => (BiometricTokenUpdatedPayloadJSObject payload) {
          event.eventHandler(BiometricTokenUpdatedPayload(payload.isUpdated.toDart));
        }.toJS,
      TelegramEventType.fullscreenChanged => (event.eventHandler as void Function()).toJS,
      TelegramEventType.fullscreenFailed => (FullScreenFailedResultJSObject result) {
        event.eventHandler(result.error.toDart);
        }.toJS,
      TelegramEventType.deviceOrientationStarted => (event.eventHandler as void Function()).toJS,
      TelegramEventType.deviceOrientationStopped => (event.eventHandler as void Function()).toJS,
      TelegramEventType.deviceOrientationChanged => (event.eventHandler as void Function()).toJS,
      TelegramEventType.deviceOrientationFailed => (DeviceOrientationFailedResultJSObject result) {
        event.eventHandler(result.error.toDart);
        }.toJS,
      TelegramEventType.homeScreenAdded => (event.eventHandler as void Function()).toJS,
      TelegramEventType.homeScreenChecked => (HomeScreenCheckedResultJSObject result) {
          event.eventHandler(result.status.toDart);
        }.toJS,
      TelegramEventType.accelerometerStarted => (event.eventHandler as void Function()).toJS,
      TelegramEventType.accelerometerStopped => (event.eventHandler as void Function()).toJS,
      TelegramEventType.accelerometerChanged => (event.eventHandler as void Function()).toJS,
      TelegramEventType.accelerometerFailed => (AccelerometerFailedResultJSObject result) {
          event.eventHandler(result.error.toDart);
        }.toJS,
      TelegramEventType.gyroscopeStarted => (event.eventHandler as void Function()).toJS,
      TelegramEventType.gyroscopeStopped => (event.eventHandler as void Function()).toJS,
      TelegramEventType.gyroscopeChanged => (event.eventHandler as void Function()).toJS,
      TelegramEventType.gyroscopeFailed => (GyroscopeFailedResultJSObject result) {
          event.eventHandler(result.error.toDart);
        }.toJS,
      TelegramEventType.locationManagerUpdated => (event.eventHandler as void Function()).toJS,
      TelegramEventType.locationRequested => (LocationDataJSObject payload) {
          event.eventHandler.call(LocationData.from(payload));
        }.toJS,
      TelegramEventType.shareMessageSent => (event.eventHandler as void Function()).toJS,
      TelegramEventType.shareMessageFailed => (ShareMessageFailedResultJSObject result) {
          event.eventHandler(result.error.toDart);
        }.toJS,
      TelegramEventType.emojiStatusSet => (event.eventHandler as void Function()).toJS,
      TelegramEventType.emojiStatusFailed => (EmojiStatusFailedResultJSObject result) {
        event.eventHandler(result.error.toDart);
        }.toJS,
      TelegramEventType.emojiStatusAccessRequested =>
        (event.eventHandler as void Function(String status)).toJS,
      TelegramEventType.fileDownloadRequested =>
        (event.eventHandler as void Function(String status)).toJS,
    };
  }
}
