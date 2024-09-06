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
  bool get isClosingConfirmationEnabled => true;

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
  BiometricManager get biometricManager => throw UnimplementedError();

  @override
  Future<bool> isVersionAtLeast(String version) async => true;

  @override
  Future<void> setHeaderColor(Color color) async {}

  @override
  Future<void> setBackgroundColor(Color color) async {}

  @override
  Future<void> enableClosingConfirmation() async {}

  @override
  Future<void> disableClosingConfirmation() async {}

  @override
  void onEvent(TelegramEvent event) async {}
  @override
  void offEvent(TelegramEvent event) async {}
  @override
  Future<void> sendData(String data) async {}

  @override
  Future<void> switchInlineQuery(String query, [ChatType? chatType]) async {}
  @override
  Future<void> openLink(String url, {bool tryInstantView = true}) async {
    print("Mocked open link for $url, tryInstantView: $tryInstantView");
  }

  @override
  Future<void> openTelegramLink(String url) async {}

  @override
  Future<void> openInvoice(String url, [Function(dynamic)? onInvoiceStatus]) async {}

  @override
  Future<void> shareToStory(String mediaUrl, {StoryShareParams? params}) async {}

  @override
  Future<void> showPopup({
    String? title,
    required String message,
    List<PopupButton>? buttons,
    required Function(String id) callback,
  }) async {}

  @override
  Future<void> showAlert(String message, [Function()? callback]) async {}

  @override
  Future<void> showConfirm(String message, [void Function(bool isOkPressed)? callback]) async {}

  @override
  Future<void> showScanQrPopup(String? infoTitle, [bool Function(String result)? callback]) async {}

  @override
  Future<void> closeScanQrPopup() async {}

  @override
  Future<void> readTextFromClipboard([void Function(String clipboardText)? onRead]) async {}

  @override
  Future<void> requestWriteAccess({required Function(bool granted) onResult}) async {}

  @override
  Future<void> requestContact([void Function(bool granted)? onResult]) async {}

  @override
  Future<void> ready() async {}

  @override
  Future<void> expand() async {}

  @override
  Future<void> close() async {}

  @override
  Future<void> disableVerticalSwipes() async {}
  @override
  Future<void> enableVerticalSwipes() async {}
  @override
  bool get isVerticalSwipesEnabled => true;
}
