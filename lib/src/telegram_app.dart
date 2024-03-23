part of '../telegram_web_app.dart';

/// All the apis provided at https://core.telegram.org/bots/webapps#initializing-mini-apps
class TelegramWebApp {
  static TelegramWebApp? _instance;

  static TelegramWebApp get instance => _instance ??= TelegramWebApp();

  /// returns true if opened inside Telegram web
  bool get isSupported => platform.toLowerCase() != "unknown";

  /// A string with raw data transferred to the Mini App, convenient for validating data.
  /// WARNING: Validate data from this field before using it on the bot's server.
  TelegramInitData get initData => TelegramInitData.fromRawString(tg.initData);

  /// An object with input data transferred to the Mini App.
  /// WARNING: Data from this field should not be trusted. You should only use data from
  /// initData on the bot's server and only after it has been validated.
  WebAppInitData get initDataUnsafe => tg.initDataUnsafe;

  /// The version of the Bot API available in the user's Telegram app.
  String get version => tg.version;

  /// The name of the platform of the user's Telegram app.
  String get platform => tg.platform;

  /// The color scheme currently used in the Telegram app. Either “light” or “dark”.
  TelegramColorScheme get colorScheme =>
      tg.colorScheme == 'dark' ? TelegramColorScheme.dark : TelegramColorScheme.light;

  /// An object containing the current theme settings
  /// used in the Telegram app.
  ThemeParams get themeParams => ThemeParams.instance;

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

  Color? get headerColor => tg.headerColor.toColor();

  Color? get backgroundColor => tg.backgroundColor.toColor();

  /// True, if the confirmation dialog is enabled
  /// while the user is trying to close the Mini App.
  /// False, if the confirmation dialog is disabled.
  bool get isClosingConfirmationEnabled => tg.isClosingConfirmationEnabled;

  /// An object for controlling the back button
  /// which can be displayed in the header of
  /// the Mini App in the Telegram interface.
  BackButton get backButton => BackButton.instance;

  /// An object for controlling the main button,
  /// which is displayed at the bottom of the
  /// Mini App in the Telegram interface.
  MainButton get mainButton => MainButton.instance;

  /// An object for controlling the Settings item
  /// in the context menu of the Mini App in the
  /// Telegram interface.
  SettingsButton get settingButton => SettingsButton.instance;

  /// An object for controlling haptic feedback.
  HapticFeedback get hapticFeedback => HapticFeedback.instance;

  /// An object for controlling cloud storage.
  CloudStorage get cloudStorage => CloudStorage.instance;

  /// Returns true if the user's app supports a
  /// version of the Bot API that is equal to or
  /// higher than the version passed as the parameter.
  Future<bool> isVersionAtLeast(String version) => tg.isVersionAtLeast(version);

  Future<void> setHeaderColor(Color color) => tg.setHeaderColor(color.hexString);

  Future<void> setBackgroundColor(Color color) => tg.setBackgroundColor(color.hexString);

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
      tg.onEvent(event.eventType.name, tg.JsDynamicCallback(event.eventHandler));

  /// A method that deletes a previously set event handler.
  void offEvent(TelegramEvent event) =>
      tg.offEvent(event.eventType.name, tg.JsDynamicCallback(event.eventHandler));

  /// A method used to send data to the bot. When this method is called,
  /// a service message is sent to the bot containing the data data of
  /// the length up to 4096 bytes, and the Mini App is closed. See the field web_app_data in the class Message.
  /// WARNING!!! This method is only available for Mini Apps launched via a KEYBOARD button.
  Future<void> sendData(String data) => tg.sendData(data);

  /// A method that inserts the bot's username and the specified inline
  /// query in the current chat's input field. Query may be empty, in
  /// which case only the bot's username will be inserted. If an optional
  /// choose_chat_types parameter was passed, the client prompts the user
  /// to choose a specific chat, then opens that chat and inserts the bot's
  /// username and the specified inline query in the input field. You can
  /// specify which types of chats the user will be able to choose from.
  /// It can be one or more of the following types: users, bots, groups, channels
  /// WARNING!!! Enable inline query before using api
  Future<void> switchInlineQuery(String query, [ChatType? chatType]) =>
      tg.switchInlineQuery(query, chatType?.chatType);

  /// A method that opens a link in an external browser. The Mini App will not be closed.
  /// Bot API 6.4+ If the optional [options] parameter is passed with the field
  /// try_instant_view=true, the link will be opened in Instant View mode if possible.
  /// Note that this method can be called only in response to user interaction with
  /// the Mini App interface (e.g. a click inside the Mini App or on the main button)
  Future<void> openLink(String url, {bool tryInstantView = true}) =>
      tg.openLink(url, OpenLinkParams(try_instant_view: tryInstantView));

  /// A method that opens a telegram link inside the Telegram app. The Mini App will
  /// not be closed after this method is called.
  /// Up to Bot API 7.0 The Mini App will be closed after this method is called.
  Future<void> openTelegramLink(String url) => tg.openTelegramLink(url);

  /// A method that opens an invoice using the link url. The Mini App will receive
  /// the event invoiceClosed when the invoice is closed. If an optional callback
  /// parameter was passed, the callback function will be called and the invoice
  /// status will be passed as the first argument
  Future<void> openInvoice(String url, [Function(dynamic)? onInvoiceStatus]) =>
      onInvoiceStatus != null ? tg.openInvoice(url, onInvoiceStatus) : tg.openInvoice(url);

  /// A method that shows a native popup described by the [params] argument of the
  /// type [PopupParams]. The Mini App will receive the event [popupClosed] when the
  /// popup is closed. If an optional [callback] parameter was passed, the callback
  /// function will be called and the field [id] of the pressed button will be passed
  /// as the first argument.
  Future<void> showPopup({
    String? title,
    required String message,
    List<PopupButton>? buttons,
    required Function(String id) callback,
  }) {
    List<PopupButtonInternal>? newButtons;
    if (buttons != null) {
      newButtons = [];
      for (var b in buttons) {
        newButtons.add(b.asInternalPopupButton);
      }
    }
    return tg.showPopup(
      PopupParams(title: title, message: message, buttons: newButtons),
      tg.JsDynamicCallback(callback),
    );
  }

  /// A method that shows message in a simple alert with a 'Close' button. If an optional
  /// callback parameter was passed, the callback function will be called when the popup is closed.
  Future<void> showAlert(String message, [Function()? callback]) => callback != null
      ? tg.showAlert(message, tg.JsDynamicCallback(callback))
      : tg.showAlert(message);

  /// A method that shows message in a simple confirmation window with 'OK' and 'Cancel' buttons.
  /// If an optional callback parameter was passed, the callback function will be called when
  /// the popup is closed and the first argument will be a boolean indicating whether the user
  /// pressed the 'OK' button.
  Future<void> showConfirm(String message, [void Function(bool isOkPressed)? callback]) =>
      callback != null
          ? tg.showConfirm(message, tg.JsDynamicCallback(callback))
          : tg.showConfirm(message);

  /// A method that shows a native popup for scanning a QR code described by the params argument
  /// of the type [ScanQrPopupParams]. The Mini App will receive the event [qrTextReceived] every time
  /// the scanner catches a code with text data. If an optional callback parameter was passed,
  /// the callback function will be called and the text from the QR code will be passed as the
  /// [first argument]. Returning true inside this [callback] function causes the popup to be closed.
  Future<void> showScanQrPopup(String? infoTitle, [bool Function(String result)? callback]) =>
      callback != null
          ? tg.showScanQrPopup(ScanQrPopupParams(text: infoTitle), tg.JsDynamicCallback(callback))
          : tg.showScanQrPopup(ScanQrPopupParams(text: infoTitle));

  /// A method that closes the native popup for scanning a QR code opened with the showScanQrPopup method.
  /// Run it if you received valid data in the event qrTextReceived.
  Future<void> closeScanQrPopup() => tg.closeScanQrPopup();

  /// A method that requests text from the clipboard. The Mini App will receive the event clipboardTextReceived.
  /// If an optional callback parameter was passed, the callback function will be called and the text from the
  /// clipboard will be passed as the first argument.
  /// Note: this method can be called only for Mini Apps launched from the attachment menu and only in
  /// response to a user interaction with the Mini App interface (e.g. a click inside the Mini App
  /// or on the main button).
  Future<void> readTextFromClipboard([void Function(String clipboardText)? onRead]) =>
      onRead != null
          ? tg.readTextFromClipboard(tg.JsDynamicCallback(onRead))
          : tg.readTextFromClipboard();

  /// A method that shows a native popup requesting permission for the bot to send messages to the user.
  /// If an optional [callback] parameter was passed, the callback function will be called when the popup
  /// is closed and the first argument will be a boolean indicating whether the user granted this access.
  /// NOTE! callback is not called if write access is already granted
  Future<void> requestWriteAccess([void Function(bool granted)? onResult]) =>
      onResult != null ? tg.requestWriteAccess(onResult) : tg.requestWriteAccess();

  /// A method that shows a native popup prompting the user for their phone number. If an optional
  /// [callback] parameter was passed, the callback function will be called when the popup is
  /// closed and the first argument will be a boolean indicating whether the user shared its phone number.
  Future<void> requestContact([void Function(bool granted)? onResult]) =>
      onResult != null ? tg.requestContact(onResult) : tg.requestContact();

  /// A method that informs the Telegram app that the Mini App is ready to be displayed.
  /// It is recommended to call this method as early as possible, as soon as all essential interface elements
  /// are loaded. Once this method is called, the loading placeholder is hidden and the Mini App is shown.
  /// If the method is not called, the placeholder will be hidden only when the page is fully loaded.
  Future<void> ready() => tg.ready();

  /// A method that expands the Mini App to the maximum available height. To find out if the Mini
  /// App is expanded to the maximum height, refer to the value of the Telegram.WebApp.isExpanded parameter
  Future<void> expand() => tg.expand();

  /// A method that closes the Mini App.
  Future<void> close() => tg.close();
}
