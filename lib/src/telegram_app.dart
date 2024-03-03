part of '../telegram_web_app.dart';

/// All the apis provided at https://core.telegram.org/bots/webapps#initializing-mini-apps
class TelegramWebApp {
  /// A string with raw data transferred to the Mini App, convenient for validating data.
  /// WARNING: Validate data from this field before using it on the bot's server.
  String get initData => tg.initData;

  /// An object with input data transferred to the Mini App.
  /// WARNING: Data from this field should not be trusted. You should only use data from
  /// initData on the bot's server and only after it has been validated.
  WebAppInitData get initDataUnsafe => tg.initDataUnsafe;

  /// The version of the Bot API available in the user's Telegram app.
  String get version => tg.version;

  /// The name of the platform of the user's Telegram app.
  String get platform => tg.platform;

  TelegramColorScheme get colorScheme =>
      tg.colorScheme == 'dark' ? TelegramColorScheme.Dark : TelegramColorScheme.Light;

  /// An object containing the current theme settings
  /// used in the Telegram app.
  ThemeParams get themeParams => tg.themeParams;

  /// True, if the Mini App is expanded to the maximum
  /// available height. False, if the Mini App occupies
  /// part of the screen and can be expanded to the full
  /// height using the expand() method.
  bool get isExpanded => tg.isExpanded;

  /// The current height of the visible area of the Mini App
  double? get viewportHeight => tg.viewportHeight;

  /// The height of the visible area of the Mini App
  /// in its last stable state
  double? get viewportStableHeight => tg.viewportStableHeight;

  String get headerColor => tg.headerColor;

  String get backgroundColor => tg.backgroundColor;

  /// True, if the confirmation dialog is enabled
  /// while the user is trying to close the Mini App.
  /// False, if the confirmation dialog is disabled.
  bool get isClosingConfirmationEnabled => tg.isClosingConfirmationEnabled;

  /// An object for controlling the back button
  /// which can be displayed in the header of
  /// the Mini App in the Telegram interface.
  BackButton get backButton => tg.BackButton;

  /// An object for controlling the main button,
  /// which is displayed at the bottom of the
  /// Mini App in the Telegram interface.
  MainButton get mainButton => tg.MainButton;

  /// An object for controlling the Settings item
  /// in the context menu of the Mini App in the
  /// Telegram interface.
  SettingsButton get settingButton => tg.SettingsButton;

  /// An object for controlling haptic feedback.
  HapticFeedback get hapticFeedback => tg.HapticFeedback;

  /// An object for controlling cloud storage.
  CloudStorage get cloudStorage => tg.CloudStorage;

  /// Returns true if the user's app supports a
  /// version of the Bot API that is equal to or
  /// higher than the version passed as the parameter.
  Future<bool> isVersionAtLeast(String version) => tg.isVersionAtLeast(version);

  Future<void> setHeaderColor(String color) => tg.setHeaderColor(color);

  Future<void> setBackgroundColor(String color) => tg.setBackgroundColor(color);

  /// A method that enables a confirmation dialog while
  /// the user is trying to close the Mini App.
  Future<void> enableClosingConfirmation() => tg.enableClosingConfirmation();

  /// A method that disables the confirmation dialog while
  /// the user is trying to close the Mini App.
  Future<void> disableClosingConfirmation() => tg.disableClosingConfirmation();

  /// A method that sets the app event handler. Check the list of [available events](https://core.telegram.org/bots/webapps#events-available-for-mini-apps).
  /// All events mapped to events of TelegramEvent
  /// WARNING: call offEvent method to unregister callback
  void onEvent(TelegramEvent event) =>
      tg.onEvent(event.eventType, tg.JsDynamicCallback(event.eventHandler));

  /// A method that deletes a previously set event handler.
  void offEvent(TelegramEvent event) =>
      tg.offEvent(event.eventType, tg.JsDynamicCallback(event.eventHandler));
}
