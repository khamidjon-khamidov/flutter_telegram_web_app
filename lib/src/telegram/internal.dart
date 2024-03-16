@JS("Telegram.WebApp")
library internal;

import 'package:js/js.dart';
import 'package:telegram_web_app/src/telegram/data/popup_params.dart';
import 'package:telegram_web_app/src/telegram/data/scan_qr_popup_params.dart';
import 'package:telegram_web_app/src/telegram/models/settings_button.dart' as sb;

import 'data/theme_params.dart';
import 'data/web_app_init_data.dart';
import 'models/back_button.dart' as bb;
import 'models/cloud_storage.dart' as cs;
import 'models/haptic_feedback.dart' as hf;
import 'models/main_button.dart' as mb;

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

external ThemeParams get themeParams;
external bb.BackButton get BackButton;
external mb.MainButton get MainButton;
external sb.SettingsButton get SettingsButton;
external cs.CloudStorage get CloudStorage;
external WebAppInitData get initDataUnsafe;
external hf.HapticFeedback get HapticFeedback;

external Future<void> ready();
external Future<void> expand();
external Future<void> close();
external Future<void> enableClosingConfirmation();
external Future<void> disableClosingConfirmation();
external Future<void> sendData(dynamic data);
external Future<bool> isVersionAtLeast(version);
external Future<void> setHeaderColor(String color);
external Future<void> setBackgroundColor(String color);
external Future<void> switchInlineQuery(query, [choose_chat_types]);
external Future<void> openLink(url, [options]);
external Future<void> openTelegramLink(String url);
external Future<void> openInvoice(String url, [JsCallback]);
external Future<void> readTextFromClipboard([JsCallback]);

external Future<void> requestWriteAccess([JsCallback]);
external Future<void> requestContact([JsCallback]);

/// use [TelegramPopup.show()] to show the popup, instead of this method directly
external Future<void> showPopup(PopupParams param, [JsCallback]);
external Future<void> showAlert(String message, [JsCallback]);
external Future<void> showConfirm(String message, [JsCallback]);
external Future<void> showScanQrPopup(ScanQrPopupParams params, [JsCallback]);
external Future<void> closeScanQrPopup();

///Events
///
/// Available events: https://core.telegram.org/bots/webapps#events-available-for-web-apps
/// use [TelegramWebEventType] to get the event names, and use [JsVoidCallback] for callbacks
/// or if any callback requires a return value, use [JsCallback] with the return type
external void onEvent(String eventType, JsCallback);
external void offEvent(String eventType, JsCallback);

///Callbacks
///
/// Always use these method for callbacks
JsCallback<T>(Function(T) callback) => allowInterop(callback);
JsVoidCallback(Function() callback) => allowInterop(callback);

JsDynamicCallback(Function callback) => allowInterop(callback);
