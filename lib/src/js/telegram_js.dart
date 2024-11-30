library telegram_js;

/// this library contains all the apis of the telegram js library

import 'dart:js_interop';

import 'package:telegram_web_app/src/js/telegram/telegram_js_models.dart';

@JS()
external TelegramJSObject get Telegram;

extension type TelegramJSObject._(JSObject _) implements JSObject {
  external WebAppJSObject get WebApp;
}

extension type WebAppJSObject._(JSObject _) implements JSObject {
  external String get initData;

  external String get version;

  external String get platform;

  external String get colorScheme;

  external String get headerColor;

  external String get backgroundColor;

  external String get bottomBarColor;

  external bool get isClosingConfirmationEnabled;

  external bool get isExpanded;

  external bool get isActive;

  external double? get viewportHeight;

  external double? get viewportStableHeight;

  external String? get tgWebAppStartParam;

  external bool get isVerticalSwipesEnabled;

  external bool get isFullscreen;

  external bool get isOrientationLocked;

  external SafeAreaInsetJSObject get safeAreaInset;

  external ContentSafeAreaInsetJSObject get contentSafeAreaInset;

  external ThemeParamsJSObject get themeParams;

  external BackButtonJSObject get BackButton;

  external BottomButtonJSObject get MainButton;

  external SettingsButtonJSObject get SettingsButton;

  external BottomButtonJSObject get SecondaryButton;

  external HapticFeedbackJSObject get HapticFeedback;

  external CloudStorageJSObject get CloudStorage;

  external AccelerometerJSObject get Accelerometer;

  external BiometricManagerJSObject get BiometricManager;

  external DeviceOrientationJSObject get DeviceOrientation;

  external GyroscopeJSObject get Gyroscope;

  external LocationManagerJSObject get LocationManager;

  external WebAppInitDataJSObject get initDataUnsafe;

  external void ready();

  external void expand();

  external void close();

  external void enableClosingConfirmation();

  external void disableClosingConfirmation();

  external void sendData(String data);

  external JSBoolean isVersionAtLeast(String version);

  external void setHeaderColor(String color);

  external void setBackgroundColor(String color);

  external void setBottomBarColor(String color);

  external void switchInlineQuery(String query, [JSArray<JSString>? choose_chat_types]);

  external void openLink(String url, [OpenLinkParamsJSObject? options]);

  external void openTelegramLink(String url);

  external void openInvoice(String url, [JSExportedDartFunction? callback]);

  external void readTextFromClipboard([JSExportedDartFunction? callback]);

  external void requestWriteAccess([JSExportedDartFunction? callback]);

  external void requestContact([JSExportedDartFunction? callback]);

  external void shareToStory(String media_url, [StoryShareParamsJSObject? params]);

  external void showPopup(PopupParamsJSObject params, [JSExportedDartFunction? callback]);

  external void showAlert(String message, [JSExportedDartFunction? callback]);

  external void showConfirm(String message, [JSExportedDartFunction? callback]);

  external void showScanQrPopup(ScanQrPopupParamsJSObject params,
      [JSExportedDartFunction? callback]);

  external void closeScanQrPopup();

  external void onEvent(String eventType, JSExportedDartFunction? callback);

  external void offEvent(String eventType, JSExportedDartFunction? callback);

  external void enableVerticalSwipes();

  external void disableVerticalSwipes();

  external void requestFullscreen();

  external void exitFullscreen();

  external void lockOrientation();

  external void unlockOrientation();

  external void addToHomeScreen();

  external void checkHomeScreenStatus(JSExportedDartFunction callback);

  external void downloadFile(DownloadFileParamsJSObject params, JSExportedDartFunction callback);

  external void shareMessage(String msg_id, JSExportedDartFunction callback);

  external void setEmojiStatus(String emoji, EmojiStatusParamsJSObject params, JSExportedDartFunction callback);

  external void requestEmojiStatusAccess(JSExportedDartFunction callback);
}
