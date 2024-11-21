part of '../telegram_web_app.dart';

/// All the apis provided at https://core.telegram.org/bots/webapps#initializing-mini-apps
abstract class TelegramWebApp {
  static TelegramWebApp? _instance;

  static TelegramWebApp get instance => _instance ??= TelegramWebAppImpl._();

  /// Returns true if opened inside Telegram web.
  bool get isSupported;

  /// A string with raw data transferred to the Mini App,
  /// convenient for validating data.
  /// WARNING: Validate data from this field before using it on
  /// the bot's server.
  TelegramInitData get initData;

  /// An object with input data transferred to the Mini App.
  /// WARNING: Data from this field should not be trusted.
  /// You should only use data from initData on the bot's
  /// server and only after it has been validated.
  WebAppInitData? get initDataUnsafe;

  /// The version of the Bot API available in the user's
  /// Telegram app.
  String get version;

  /// The name of the platform of the user's Telegram app.
  String get platform;

  /// The color scheme currently used in the Telegram app.
  /// Either “light” or “dark”.
  /// Also available as the CSS variable var(--tg-color-scheme).
  TelegramColorScheme get colorScheme;

  /// An object containing the current theme settings used in
  /// the Telegram app.
  ThemeParams get themeParams;

  /// **Bot API 8.0+**
  ///
  /// True, if the Mini App is currently active.
  /// False, if the Mini App is minimized.
  bool get isActive;

  /// **Bot API 8.0+**
  ///
  /// True, if the Mini App is expanded to the maximum
  /// available height. False, if the Mini App occupies part of
  /// the screen and can be expanded to the full height using
  /// the expand() method.
  bool get isExpanded;

  /// The current height of the visible area of the Mini App.
  /// Also available in CSS as the variable var(--tg-viewport-
  /// height).
  ///
  /// The application can display just the top part of the Mini
  /// App, with its lower part remaining outside the screen
  /// area. From this position, the user can “pull” the Mini App
  /// to its maximum height, while the bot can do the same by
  /// calling the expand() method. As the position of the Mini
  /// App changes, the current height value of the visible area
  /// will be updated in real time.
  ///
  /// Please note that the refresh rate of this value is not
  /// sufficient to smoothly follow the lower border of the
  /// window. It should not be used to pin interface elements
  /// to the bottom of the visible area. It's more appropriate to
  /// use the value of the viewportStableHeight field for this
  /// purpose.
  double? get viewportHeight;

  /// The height of the visible area of the Mini App in its last
  /// stable state. Also available in CSS as a variable var(--tg-
  /// viewport-stable-height).
  ///
  /// The application can display just the top part of the Mini
  /// App, with its lower part remaining outside the screen
  /// area. From this position, the user can “pull” the Mini App
  /// to its maximum height, while the bot can do the same by
  /// calling the expand() method. Unlike the value of
  /// viewportHeight, the value of viewportStableHeight
  /// does not change as the position of the Mini App changes
  /// with user gestures or during animations. The value of
  /// viewportStableHeight will be updated after all gestures
  /// and animations are completed and the Mini App reaches
  /// its final size.
  ///
  /// Note the event viewportChanged with the passed
  /// parameter isStateStable=true, which will allow you to
  /// track when the stable state of the height of the visible
  /// area changes.
  double? get viewportStableHeight;

  /// Current header color in the #RRGGBB format.
  Color? get headerColor;

  /// Current background color in the #RRGGBB format.
  Color? get backgroundColor;

  /// Current bottom bar color in the #RRGGBB format.
  Color? get bottomBarColor;

  /// True, if the confirmation dialog is enabled while the
  /// user is trying to close the Mini App. False, if the confirmation
  /// dialog is disabled.
  bool get isClosingConfirmationEnabled;

  /// True, if vertical swipes to close or minimize the Mini App
  /// are enabled. False, if vertical swipes to close or minimize
  /// the Mini App are disabled. In any case, the user will still
  /// be able to minimize and close the Mini App by swiping
  /// the Mini App's header.
  bool get isVerticalSwipesEnabled;

  /// **Bot API 8.0+**
  ///
  /// True, if the Mini App is currently being displayed in fullscreen mode.
  bool get isFullscreen;

  /// **Bot API 8.0+**
  ///
  /// True, if the Mini App’s orientation is currently locked.
  /// False, if orientation changes freely based on the device’s rotation.
  bool get isOrientationLocked;

  /// **Bot API 8.0+**
  ///
  /// A method that locks the Mini App’s orientation to its current mode
  /// (either portrait or landscape). Once locked, the orientation remains
  /// fixed, regardless of device rotation. This is useful if a stable
  /// orientation is needed during specific interactions.
  void lockOrientation();

  /// **Bot API 8.0+**
  ///
  /// A method that unlocks the Mini App’s orientation, allowing it to follow
  /// the device's rotation freely. Use this to restore automatic orientation
  /// adjustments based on the device orientation.
  void unlockOrientation();

  /// **Bot API 8.0+**
  ///
  /// An object for accessing device orientation data on the device.
  DeviceOrientation get deviceOrientation;

  /// **Bot API 8.0+**
  ///
  /// An object representing the device's safe area insets, accounting for system UI elements like notches or navigation bars.
  SafeAreaInset get safeAreaInset;

  /// **Bot API 8.0+**
  ///
  /// An object representing the safe area for displaying content within the app, free from overlapping Telegram UI elements.
  ContentSafeAreaInset get contentSafeAreaInset;

  /// An object for controlling the back button which can
  /// be displayed in the header of the Mini App in the Telegram
  /// interface.
  BackButton get backButton;

  /// An object for controlling the main button, which is
  /// displayed at the bottom of the Mini App in the Telegram
  /// interface.
  BottomButton get mainButton;

  /// An object for controlling the secondary button, which is
  /// displayed at the bottom of the Mini App in the Telegram
  /// interface.
  BottomButton get secondaryButton;

  /// An object for controlling the Settings item in the context
  /// menu of the Mini App in the Telegram interface.
  SettingsButton get settingButton;

  /// An object for controlling haptic feedback.
  HapticFeedback get hapticFeedback;

  /// An object for controlling cloud storage.
  CloudStorage get cloudStorage;

  /// An object for controlling biometrics on the device.
  BiometricManager get biometricManager;

  /// Returns true if the user's app supports a version of the
  /// Bot API that is equal to or higher than the version passed
  /// as the parameter.
  bool isVersionAtLeast(String version);

  /// Bot API 6.1+ A method that sets the app header color in
  /// the #RRGGBB format. You can also use keywords bg_color
  /// and secondary_bg_color.
  ///
  /// Up to Bot API 6.9 You can only pass
  /// Telegram.WebApp.themeParams.bg_color or
  /// Telegram.WebApp.themeParams.secondary_bg_color as a
  /// color or bg_color, secondary_bg_color keywords.
  void setHeaderColor(Color color);

  /// Bot API 6.1+ A method that sets the app background
  /// color in the #RRGGBB format. You can also use keywords
  /// bg_color and secondary_bg_color.
  void setBackgroundColor(Color color);

  /// Bot API 7.10+ A method that sets the app's bottom bar
  /// color in the #RRGGBB format. You can also use the
  /// keywords bg_color, secondary_bg_color and bottom_bar_bg_color.
  void setBottomBarColor(Color color);

  /// Bot API 6.2+ A method that enables a confirmation
  /// dialog while the user is trying to close the Mini App.
  void enableClosingConfirmation();

  /// Bot API 6.2+ A method that disables the confirmation
  /// dialog while the user is trying to close the Mini App.
  void disableClosingConfirmation();

  /// Bot API 7.7+ A method that enables vertical swipes to
  /// close or minimize the Mini App. For user convenience, it
  /// is recommended to always enable swipes unless they
  /// conflict with the Mini App's own gestures.
  void enableVerticalSwipes();

  /// Bot API 7.7+ A method that disables vertical swipes to
  /// close or minimize the Mini App. This method is useful if
  /// your Mini App uses swipe gestures that may conflict with
  /// the gestures for minimizing and closing the app.
  void disableVerticalSwipes();

  /// A method that sets the app event handler. Check the list of
  /// [available events](https://core.telegram.org/bots/webapps#events-available-for-mini-apps).
  ///
  /// All events mapped to events of TelegramEvent
  /// WARNING: call offEvent method to unregister callback
  void onEvent(TelegramEvent event);

  /// A method that deletes a previously set event handler.
  void offEvent(TelegramEvent event);

  /// A method used to send data to the bot. When this
  /// method is called, a service message is sent to the bot
  /// containing the data data of the length up to 4096 bytes,
  /// and the Mini App is closed. See the field web_app_data in
  /// the class Message.
  ///
  /// This method is only available for Mini Apps launched via a Keyboard button.
  void sendData(String data);

  /// Bot API 6.7+ A method that inserts the bot's username
  /// and the specified inline query in the current chat's input
  /// field. Query may be empty, in which case only the bot's
  /// username will be inserted. If an optional
  /// choose_chat_types parameter was passed, the client
  /// prompts the user to choose a specific chat, then opens
  /// that chat and inserts the bot's username and the
  /// specified inline query in the input field. You can specify
  /// which types of chats the user will be able to choose from.
  /// It can be one or more of the following types: users, bots,
  /// groups, channels.
  void switchInlineQuery(String query, [List<ChatType>? chatTypes]);

  /// A method that opens a link in an external browser. The
  /// Mini App will not be closed.
  /// Bot API 6.4+ If the optional options parameter is passed
  /// with the field try_instant_view=true, the link will be
  /// opened in Instant View mode if possible.
  ///
  /// Note that this method can be called only in response to
  /// user interaction with the Mini App interface (e.g. a click
  /// inside the Mini App or on the main button)
  void openLink(String url, {bool tryInstantView = true});

  /// A method that opens a telegram link inside the Telegram
  /// app. The Mini App will not be closed after this method is
  /// called.
  ///
  /// Up to Bot API 7.0 The Mini App will be closed after this
  /// method is called.
  void openTelegramLink(String url);

  /// Bot API 6.1+ A method that opens an invoice using the
  /// link url. The Mini App will receive the event invoiceClosed
  /// when the invoice is closed. If an optional callback
  /// parameter was passed, the callback function will be called and the invoice status will be passed as the first
  /// argument.
  void openInvoice(String url, [void Function(InvoiceStatus status)? onInvoiceStatus]);

  /// Bot API 7.8+ A method that opens the native story
  /// editor with the media specified in the media_url
  /// parameter as an HTTPS URL. An optional params
  /// argument of the type [StoryShareParams] describes
  /// additional sharing settings.
  void shareToStory(
    String mediaUrl, {
    StoryShareParams? params,
  });

  /// Bot API 6.2+ A method that shows a native popup
  /// described by the params argument of the type
  /// [PopupParams]. The Mini App will receive the event
  /// popupClosed when the popup is closed. If an optional
  /// callback parameter was passed, the callback function will
  /// be called and the field id of the pressed button will be
  /// passed as the first argument.
  void showPopup({
    String? title,
    required String message,
    List<PopupButton>? buttons,
    required Function(String id) callback,
  });

  /// Bot API 6.2+ A method that shows message in a simple
  /// alert with a 'Close' button. If an optional callback
  /// parameter was passed, the callback function will be
  /// called when the popup is closed.
  void showAlert(String message, [Function()? callback]);

  /// Bot API 6.2+ A method that shows message in a simple
  /// confirmation window with 'OK' and 'Cancel' buttons. If an
  /// optional callback parameter was passed, the callback
  /// function will be called when the popup is closed and the
  /// first argument will be a boolean indicating whether the
  /// user pressed the 'OK' button.
  void showConfirm(String message, [void Function(bool isOkPressed)? callback]);

  /// Bot API 6.4+ A method that shows a native popup for
  /// scanning a QR code described by the params argument of
  /// the type [ScanQrPopupParams]. The Mini App will receive
  /// the event qrTextReceived every time the scanner catches
  /// a code with text data. If an optional callback parameter
  /// was passed, the callback function will be called and the
  /// text from the QR code will be passed as the first
  /// argument. Returning true inside this callback function
  /// causes the popup to be closed. Starting from Bot API
  /// 7.7, the Mini App will receive the scanQrPopupClosed
  /// event if the user closes the native popup for scanning a
  /// QR code.
  void showScanQrPopup(String? infoTitle, [bool Function(String result)? callback]);

  /// Bot API 6.4+ A method that closes the native popup for
  /// scanning a QR code opened with the showScanQrPopup
  /// method. Run it if you received valid data in the event
  /// qrTextReceived.
  void closeScanQrPopup();

  /// Bot API 6.4+ A method that requests text from the
  /// clipboard. The Mini App will receive the event
  /// clipboardTextReceived. If an optional callback parameter
  /// was passed, the callback function will be called and the
  /// text from the clipboard will be passed as the first
  /// argument.
  ///
  /// Note: this method can be called only for Mini Apps
  /// launched from the attachment menu and only in
  /// response to a user interaction with the Mini App interface
  /// (e.g. a click inside the Mini App or on the main button).
  void readTextFromClipboard([void Function(String clipboardText)? onRead]);

  /// Bot API 6.9+ A method that shows a native popup
  /// requesting permission for the bot to send messages to the user. If an
  /// optional callback parameter was passed, the callback
  /// function will be called when the popup is closed and the
  /// first argument will be a boolean indicating whether the
  /// user granted this access.
  void requestWriteAccess({required Function(bool granted) onResult});

  /// Bot API 6.9+ A method that shows a native popup
  /// prompting the user for their phone number. If an
  /// optional callback parameter was passed, the callback
  /// function will be called when the popup is closed and the
  /// first argument will be a boolean indicating whether the
  /// user shared its phone number.
  void requestContact([void Function(bool granted)? onResult]);

  /// A method that informs the Telegram app that the Mini
  /// App is ready to be displayed.
  /// It is recommended to call this method as early as
  /// possible, as soon as all essential interface elements are
  /// loaded. Once this method is called, the loading
  /// placeholder is hidden and the Mini App is shown.
  /// If the method is not called, the placeholder will be hidden
  /// only when the page is fully loaded.
  void ready();

  /// A method that expands the Mini App to the maximum
  /// available height. To find out if the Mini App is expanded
  /// to the maximum height, refer to the value of the
  /// Telegram.WebApp.isExpanded parameter
  void expand();

  /// A method that closes the Mini App.
  void close();
}
