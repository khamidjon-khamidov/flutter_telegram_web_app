part of '../../telegram_web_app.dart';

class TelegramWebAppImpl extends TelegramWebApp {
  TelegramWebAppImpl._();

  @override
  bool get isSupported => platform.toLowerCase() != "unknown";

  @override
  TelegramInitData get initData => TelegramInitData.fromRawString(telegram_js.initData);

  @override
  WebAppInitData? get initDataUnsafe => WebAppInitData(telegram_js.initDataUnsafe);

  @override
  String get version => telegram_js.version;

  @override
  String get platform => telegram_js.platform;

  @override
  TelegramColorScheme get colorScheme =>
      telegram_js.colorScheme == 'dark' ? TelegramColorScheme.dark : TelegramColorScheme.light;

  @override
  ThemeParams get themeParams => ThemeParams.instance;

  @override
  bool get isExpanded => telegram_js.isExpanded;

  @override
  double? get viewportHeight => telegram_js.viewportHeight;

  @override
  double? get viewportStableHeight => telegram_js.viewportStableHeight;

  @override
  Color? get headerColor => telegram_js.headerColor.toColor();

  @override
  Color? get backgroundColor => telegram_js.backgroundColor.toColor();

  @override
  bool get isClosingConfirmationEnabled => telegram_js.isClosingConfirmationEnabled;

  @override
  BackButton get backButton => BackButton.instance;

  @override
  MainButton get mainButton => MainButton.instance;

  @override
  SettingsButton get settingButton => SettingsButton.instance;

  @override
  HapticFeedback get hapticFeedback => HapticFeedback.instance;

  @override
  CloudStorage get cloudStorage => CloudStorage.instance;

  @override
  BiometricManager get biometricManager => BiometricManager(telegram_js.BiometricManager);

  @override
  Future<bool> isVersionAtLeast(String version) => telegram_js.isVersionAtLeast(version);

  @override
  Future<void> setHeaderColor(Color color) => telegram_js.setHeaderColor(color.hexString);

  @override
  Future<void> setBackgroundColor(Color color) => telegram_js.setBackgroundColor(color.hexString);

  @override
  Future<void> enableClosingConfirmation() => telegram_js.enableClosingConfirmation();

  @override
  Future<void> disableClosingConfirmation() => telegram_js.disableClosingConfirmation();

  @override
  void onEvent(TelegramEvent event) =>
      telegram_js.onEvent(event.eventType.eventName, JsDynamicCallback(event.eventHandler));

  @override
  void offEvent(TelegramEvent event) =>
      telegram_js.offEvent(event.eventType.eventName, JsDynamicCallback(event.eventHandler));

  @override
  Future<void> sendData(String data) => telegram_js.sendData(data);

  @override
  Future<void> switchInlineQuery(String query, [ChatType? chatType]) =>
      telegram_js.switchInlineQuery(query, chatType?.chatType);

  @override
  Future<void> openLink(String url, {bool tryInstantView = true}) => telegram_js.openLink(
      url, telegram_js_models.OpenLinkParams(try_instant_view: tryInstantView));

  @override
  Future<void> openTelegramLink(String url) => telegram_js.openTelegramLink(url);

  @override
  Future<void> openInvoice(String url, [Function(dynamic)? onInvoiceStatus]) =>
      onInvoiceStatus != null
          ? telegram_js.openInvoice(url, JsDynamicCallback(onInvoiceStatus))
          : telegram_js.openInvoice(url);

  @override
  Future<void> shareToStory(
    String mediaUrl, {
    StoryShareParams? params,
  }) {
    return params != null
        ? telegram_js.shareToStory(
            mediaUrl,
            telegram_js_models.StoryShareParams(
              text: params.text,
              widget_link: params.widgetLink != null
                  ? telegram_js_models.StoryWidgetLink(
                      url: params.widgetLink!.url,
                      name: params.widgetLink?.name,
                    )
                  : null,
            ))
        : telegram_js.shareToStory(mediaUrl);
  }

  @override
  Future<void> showPopup({
    String? title,
    required String message,
    List<PopupButton>? buttons,
    required Function(String id) callback,
  }) {
    List<telegram_js_models.PopupButton>? newButtons;
    if (buttons != null) {
      newButtons = [];
      for (var b in buttons) {
        newButtons.add(telegram_js_models.PopupButton(id: b.id, type: b.type, text: b.text));
      }
    }
    return telegram_js.showPopup(
      telegram_js_models.PopupParams(title: title, message: message, buttons: newButtons),
      JsDynamicCallback(callback),
    );
  }

  @override
  Future<void> showAlert(String message, [Function()? callback]) => callback != null
      ? telegram_js.showAlert(message, JsDynamicCallback(callback))
      : telegram_js.showAlert(message);

  @override
  Future<void> showConfirm(String message, [void Function(bool isOkPressed)? callback]) =>
      callback != null
          ? telegram_js.showConfirm(message, JsDynamicCallback(callback))
          : telegram_js.showConfirm(message);

  @override
  Future<void> showScanQrPopup(String? infoTitle, [bool Function(String result)? callback]) =>
      callback != null
          ? telegram_js.showScanQrPopup(
              telegram_js_models.ScanQrPopupParams(text: infoTitle), JsDynamicCallback(callback))
          : telegram_js.showScanQrPopup(telegram_js_models.ScanQrPopupParams(text: infoTitle));

  @override
  Future<void> closeScanQrPopup() => telegram_js.closeScanQrPopup();

  @override
  Future<void> readTextFromClipboard([Function(String clipboardText)? onRead]) => onRead != null
      ? telegram_js.readTextFromClipboard(JsDynamicCallback(onRead))
      : telegram_js.readTextFromClipboard();

  @override
  Future<void> requestWriteAccess({required Function(bool granted) onResult}) =>
      telegram_js.requestWriteAccess(JsDynamicCallback(onResult));

  @override
  Future<void> requestContact([Function(bool granted)? onResult]) => onResult != null
      ? telegram_js.requestContact(JsDynamicCallback(onResult))
      : telegram_js.requestContact();

  @override
  Future<void> ready() => telegram_js.ready();

  @override
  Future<void> expand() => telegram_js.expand();

  @override
  Future<void> close() => telegram_js.close();

  @override
  bool get isVerticalSwipesEnabled => telegram_js.isVerticalSwipesEnabled;

  @override
  Future<void> enableVerticalSwipes() => telegram_js.enableVerticalSwipes();

  @override
  Future<void> disableVerticalSwipes() => telegram_js.disableVerticalSwipes();
}
