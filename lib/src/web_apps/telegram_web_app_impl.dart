part of '../../telegram_web_app.dart';

class TelegramWebAppImpl extends TelegramWebApp {
  TelegramWebAppImpl._();

  @override
  bool get isSupported => platform.toLowerCase() != "unknown";

  @override
  TelegramInitData get initData => TelegramInitData.fromRawString(Telegram.WebApp.initData);

  @override
  WebAppInitData? get initDataUnsafe => WebAppInitData(Telegram.WebApp.initDataUnsafe);

  @override
  String get version => Telegram.WebApp.version;

  @override
  String get platform => Telegram.WebApp.platform;

  @override
  TelegramColorScheme get colorScheme =>
      Telegram.WebApp.colorScheme == 'dark' ? TelegramColorScheme.dark : TelegramColorScheme.light;

  @override
  ThemeParams get themeParams => ThemeParams.instance;

  @override
  bool get isExpanded => Telegram.WebApp.isExpanded;

  @override
  double? get viewportHeight => Telegram.WebApp.viewportHeight;

  @override
  double? get viewportStableHeight => Telegram.WebApp.viewportStableHeight;

  @override
  Color? get headerColor => Telegram.WebApp.headerColor.toColor();

  @override
  Color? get backgroundColor => Telegram.WebApp.backgroundColor.toColor();

  @override
  Color? get bottomBarColor => Telegram.WebApp.bottomBarColor.toColor();

  @override
  bool get isClosingConfirmationEnabled => Telegram.WebApp.isClosingConfirmationEnabled;

  @override
  bool get isVerticalSwipesEnabled => Telegram.WebApp.isVerticalSwipesEnabled;

  @override
  BackButton get backButton => BackButton.instance;

  @override
  BottomButton get mainButton => BottomButton(Telegram.WebApp.MainButton);

  @override
  BottomButton get secondaryButton => BottomButton(Telegram.WebApp.SecondaryButton);

  @override
  SettingsButton get settingButton => SettingsButton.instance;

  @override
  HapticFeedback get hapticFeedback => HapticFeedback.instance;

  @override
  CloudStorage get cloudStorage => CloudStorage.instance;

  @override
  BiometricManager get biometricManager => BiometricManager(Telegram.WebApp.BiometricManager);

  @override
  bool isVersionAtLeast(String version) => Telegram.WebApp.isVersionAtLeast(version).toDart;

  @override
  void setHeaderColor(Color color) => Telegram.WebApp.setHeaderColor(color.hexString);

  @override
  void setBackgroundColor(Color color) => Telegram.WebApp.setBackgroundColor(color.hexString);

  @override
  void setBottomBarColor(Color color) => Telegram.WebApp.setBottomBarColor(color.hexString);

  @override
  void enableClosingConfirmation() => Telegram.WebApp.enableClosingConfirmation();

  @override
  void disableClosingConfirmation() => Telegram.WebApp.disableClosingConfirmation();

  @override
  void enableVerticalSwipes() => Telegram.WebApp.enableVerticalSwipes();

  @override
  void disableVerticalSwipes() => Telegram.WebApp.disableVerticalSwipes();

  @override
  void onEvent(TelegramEvent event) => Telegram.WebApp.onEvent(event.eventType.eventName, event.eventHandler);

  @override
  void offEvent(TelegramEvent event) => Telegram.WebApp.offEvent(event.eventType.eventName, event.eventHandler);

  @override
  void sendData(String data) => Telegram.WebApp.sendData(data);

  @override
  void switchInlineQuery(String query, [List<ChatType>? chatTypes]) =>
      Telegram.WebApp.switchInlineQuery(query, chatTypes?.map((e) => e.chatType.toJS).toList().toJS);

  @override
  void openLink(String url, {bool tryInstantView = true}) => Telegram.WebApp.openLink(
        url,
        OpenLinkParamsJSObject(try_instant_view: tryInstantView),
      );

  @override
  void openTelegramLink(String url) => Telegram.WebApp.openTelegramLink(url);

  @override
  void openInvoice(String url, [void Function(InvoiceStatus status)? onInvoiceStatus]) => Telegram.WebApp.openInvoice(
        url,
        onInvoiceStatus != null
            ? ((String status) => onInvoiceStatus.call(InvoiceStatus.values.firstWhere((e) => e.name == status))).toJS
            : null,
      );

  @override
  void shareToStory(String mediaUrl, {StoryShareParams? params}) {
    Telegram.WebApp.shareToStory(
      mediaUrl,
      params != null
          ? StoryShareParamsJSObject(
              text: params.text,
              widget_link: params.widgetLink != null
                  ? StoryWidgetLinkJSObject(
                      url: params.widgetLink!.url,
                      name: params.widgetLink?.name,
                    )
                  : null,
            )
          : null,
    );
  }

  @override
  void showPopup({
    String? title,
    required String message,
    List<PopupButton>? buttons,
    required void Function(String id) callback,
  }) {
    List<PopupButtonJSObject>? newButtons;
    if (buttons != null) {
      newButtons = [];
      for (var b in buttons) {
        newButtons.add(PopupButtonJSObject(id: b.id, type: b.type, text: b.text));
      }
    }

    Telegram.WebApp.showPopup(
      PopupParamsJSObject(title: title, message: message, buttons: newButtons?.toJS),
      callback.toJS,
    );
  }

  @override
  void showAlert(String message, [void Function()? callback]) => Telegram.WebApp.showAlert(message, callback?.toJS);

  @override
  void showConfirm(String message, [void Function(bool isOkPressed)? callback]) =>
      Telegram.WebApp.showConfirm(message, callback?.toJS);

  @override
  void showScanQrPopup(String? infoTitle, [bool Function(String result)? callback]) => Telegram.WebApp.showScanQrPopup(
        ScanQrPopupParamsJSObject(text: infoTitle),
        callback?.toJS,
      );

  @override
  void closeScanQrPopup() => Telegram.WebApp.closeScanQrPopup();

  @override
  void readTextFromClipboard([void Function(String clipboardText)? onRead]) =>
      Telegram.WebApp.readTextFromClipboard(onRead?.toJS);

  @override
  void requestWriteAccess({required void Function(bool granted) onResult}) =>
      Telegram.WebApp.requestWriteAccess(onResult.toJS);

  @override
  void requestContact([void Function(bool granted)? onResult]) => Telegram.WebApp.requestContact(onResult?.toJS);

  @override
  void ready() => Telegram.WebApp.ready();

  @override
  void expand() => Telegram.WebApp.expand();

  @override
  void close() => Telegram.WebApp.close();
}
