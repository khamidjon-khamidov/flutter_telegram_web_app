@JS("Telegram.WebApp")
library internal;

import 'package:js/js.dart';
import 'package:telegram_web_app/src/telegram/data/scan_qr_popup_params.dart';
import 'package:telegram_web_app/src/telegram/models/settings_button.dart' as sb;

import 'data/popup_params.dart';
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
external hf.HapticFeedback get HapticFeedback;
external cs.CloudStorage get CloudStorage;
external WebAppInitData get initDataUnsafe;

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

external Future<void> showPopup(PopupParams params, [callback]);
external Future<void> showAlert(String message, [callback]);
external Future<void> showConfirm(String message, [callback]);
external Future<void> showScanQrPopup(ScanQrPopupParams params, [callback]);
external Future<void> closeScanQrPopup();
external void onEvent(String eventType, callback);
external void offEvent(String eventType, callback);

JsDynamicCallback(Function callback) => allowInterop(callback);
