@JS("Telegram.WebApp")
library telegram_js;

/// this library contains all the apis of the telegram js library

import 'package:js/js.dart';
import 'package:telegram_web_app/src/js/telegram/telegram_js_models.dart' as telegram_js_models;

external String get initData;
external String get version;
external String get platform;
external String get colorScheme;
external String get headerColor;
external String get backgroundColor;
external bool get isClosingConfirmationEnabled;
external bool get isExpanded;
external double? get viewportHeight;
external double? get viewportStableHeight;
external String? get tgWebAppStartParam;
external bool get isVerticalSwipesEnabled;

external telegram_js_models.ThemeParams get themeParams;
external telegram_js_models.BackButton get BackButton;
external telegram_js_models.MainButton get MainButton;
external telegram_js_models.SettingsButton get SettingsButton;
external telegram_js_models.HapticFeedback get HapticFeedback;
external telegram_js_models.CloudStorage get CloudStorage;
external telegram_js_models.BiometricManager get BiometricManager;
external telegram_js_models.WebAppInitData get initDataUnsafe;

external Future<void> ready();
external Future<void> expand();
external Future<void> close();
external Future<void> enableClosingConfirmation();
external Future<void> disableClosingConfirmation();
external Future<void> sendData(String data);
external Future<bool> isVersionAtLeast(version);
external Future<void> setHeaderColor(String color);
external Future<void> setBackgroundColor(String color);
external Future<void> switchInlineQuery(query, [choose_chat_types]);
external Future<void> openLink(url, [options]);
external Future<void> openTelegramLink(String url);
external Future<void> openInvoice(String url, [callback]);
external Future<void> readTextFromClipboard([callback]);

external Future<void> requestWriteAccess([callback]);
external Future<void> requestContact([callback]);
external Future<void> shareToStory(String media_url, [params]);
external Future<void> showPopup(telegram_js_models.PopupParams params, [callback]);
external Future<void> showAlert(String message, [callback]);
external Future<void> showConfirm(String message, [callback]);
external Future<void> showScanQrPopup(telegram_js_models.ScanQrPopupParams params, [callback]);
external Future<void> closeScanQrPopup();
external void onEvent(String eventType, callback);
external void offEvent(String eventType, callback);
external Future<void> enableVerticalSwipes();
external Future<void> disableVerticalSwipes();
