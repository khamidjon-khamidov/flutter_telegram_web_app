part of '../../telegram_web_app.dart';

class TelegramWebAppFake extends TelegramWebApp {
  @override
  bool get isSupported => true;

  @override
  TelegramInitData get initData => TelegramInitData.fake();

  @override
  WebAppInitData? get initDataUnsafe => null;

  @override
  String get version => '7.0';

  @override
  String get platform => 'android';

  @override
  TelegramColorScheme get colorScheme => TelegramColorScheme.dark;

  @override
  ThemeParams get themeParams => MockThemeParams();

  @override
  bool get isExpanded => true;

  @override
  double? get viewportHeight => 548.0;

  @override
  double? get viewportStableHeight => 548.0;

  @override
  Color? get headerColor => const Color(0xff18222d);

  @override
  Color? get backgroundColor => const Color(0xff18222d);

  @override
  Color? get bottomBarColor => const Color(0xff18222d);

  @override
  bool get isClosingConfirmationEnabled => true;

  @override
  BackButton get backButton => BackButton.instance;

  @override
  BottomButton get mainButton => MockBottomButton();

  @override
  BottomButton get secondaryButton => MockBottomButton();

  @override
  SettingsButton get settingButton => SettingsButton.instance;

  @override
  HapticFeedback get hapticFeedback => HapticFeedback.instance;

  @override
  CloudStorage get cloudStorage => CloudStorage.instance;

  @override
  BiometricManager get biometricManager => throw UnimplementedError();

  @override
  bool isVersionAtLeast(String version) => true;

  @override
  void setHeaderColor(Color color) {}

  @override
  void setBackgroundColor(Color color) {}

  @override
  void setBottomBarColor(Color color) {}

  @override
  void enableClosingConfirmation() {}

  @override
  void disableClosingConfirmation() {}

  @override
  void onEvent(TelegramEvent event) {}

  @override
  void offEvent(TelegramEvent event) {}

  @override
  void sendData(String data) {}

  @override
  void switchInlineQuery(String query, [List<ChatType>? chatTypes]) {}

  @override
  void openLink(String url, {bool tryInstantView = true}) {
    print("Mocked open link for $url, tryInstantView: $tryInstantView");
  }

  @override
  void openTelegramLink(String url) {}

  @override
  void openInvoice(String url, [void Function(InvoiceStatus status)? onInvoiceStatus]) {}

  @override
  void shareToStory(String mediaUrl, {StoryShareParams? params}) {}

  @override
  void showPopup({
    String? title,
    required String message,
    List<PopupButton>? buttons,
    required Function(String id) callback,
  }) {}

  @override
  void showAlert(String message, [Function()? callback]) {}

  @override
  void showConfirm(String message, [void Function(bool isOkPressed)? callback]) {}

  @override
  void showScanQrPopup(String? infoTitle, [bool Function(String result)? callback]) {}

  @override
  void closeScanQrPopup() {}

  @override
  void readTextFromClipboard([void Function(String clipboardText)? onRead]) {}

  @override
  void requestWriteAccess({required Function(bool granted) onResult}) {}

  @override
  void requestContact([void Function(bool granted)? onResult]) {}

  @override
  void ready() {}

  @override
  void expand() {}

  @override
  void close() {}

  @override
  void disableVerticalSwipes() {}

  @override
  void enableVerticalSwipes() {}

  @override
  bool get isVerticalSwipesEnabled => true;
}
