import 'package:example/screens/util/app_bar_ext.dart';
import 'package:example/screens/util/string_snackbar_extension.dart';
import 'package:example/screens/widget/tele_appbar.dart';
import 'package:example/widgets/expandable_tile.dart';
import 'package:example/widgets/list_button.dart';
import 'package:flutter/material.dart';
import 'package:telegram_web_app/telegram_web_app.dart';

class FullscreenScreen extends StatefulWidget {
  const FullscreenScreen({super.key});

  @override
  State<FullscreenScreen> createState() => _FullscreenScreenState();
}

class _FullscreenScreenState extends State<FullscreenScreen> {
  TelegramWebApp get telegram => TelegramWebApp.instance;

  bool get isFullscreen => telegram.isFullscreen;

  @override
  void initState() {
    super.initState();

    telegram.onEvent(FullscreenChangedEvent(fullscreenChanged));
    telegram.onEvent(FullscreenFailedEvent(fullscreenFailed));
    telegram.onEvent(SafeAreaChangedEvent(onInsetChanged));
    telegram.onEvent(ContentSafeAreaChangedEvent(onInsetChanged));
  }

  @override
  void dispose() {
    telegram.offEvent(FullscreenChangedEvent(fullscreenChanged));
    telegram.offEvent(FullscreenFailedEvent(fullscreenFailed));
    telegram.offEvent(SafeAreaChangedEvent(onInsetChanged));
    telegram.offEvent(ContentSafeAreaChangedEvent(onInsetChanged));

    super.dispose();
  }

  void onInsetChanged() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TeleAppbar(title: 'Fullscreen', top: safeAreaTop),
        body: Column(
          children: [
            InfoExpandableTile(
              'isFullscreen',
              isFullscreen.toString(),
              expanded: true,
            ),
            const SizedBox(height: 16),
            ListButton('requestFullscreen()', onPress: requestFullscreen),
            ListButton('exitFullscreen()', onPress: exitFullscreen),
            // InfoExpandableTile('safeAreaInset', telegram.safeAreaInset.toString()),
            // InfoExpandableTile('contentSafeAreaInset', telegram.contentSafeAreaInset.toString()),
          ],
        ));
  }

  void requestFullscreen() => telegram.requestFullscreen();
  void exitFullscreen() => telegram.exitFullscreen();

  void fullscreenChanged() {
    'fullscreenChanged'.showSnackbar(context);
    setState(() {});
  }

  void fullscreenFailed(String reason) {
    'fullscreenFailed: $reason'.showSnackbar(context);
    setState(() {});
  }
}
