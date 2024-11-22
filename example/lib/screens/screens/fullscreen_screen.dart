import 'package:example/screens/util/string_snackbar_extension.dart';
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
  bool get isFullscreen => TelegramWebApp.instance.isFullscreen;

  @override
  void initState() {
    super.initState();

    initEvents();
  }

  void initEvents() {
    TelegramWebApp.instance.onEvent(FullscreenChangedEvent(fullscreenChanged));
    TelegramWebApp.instance.onEvent(FullscreenFailedEvent(fullscreenFailed));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Fullscreen')),
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
          ],
        ));
  }

  void requestFullscreen() => TelegramWebApp.instance.requestFullscreen();
  void exitFullscreen() => TelegramWebApp.instance.exitFullscreen();

  void fullscreenChanged() {
    'fullscreenChanged'.showSnackbar(context);
    setState(() {});
  }

  void fullscreenFailed(String reason) {
    'fullscreenFailed: $reason'.showSnackbar(context);
    setState(() {});
  }
}
