import 'package:example/screens/util/app_bar_ext.dart';
import 'package:example/screens/util/string_snackbar_extension.dart';
import 'package:example/screens/widget/tele_appbar.dart';
import 'package:flutter/material.dart';
import 'package:telegram_web_app/telegram_web_app.dart';

class ShareMessageScreen extends StatefulWidget {
  const ShareMessageScreen({super.key});

  @override
  State<ShareMessageScreen> createState() => _ShareMessageScreenState();
}

class _ShareMessageScreenState extends State<ShareMessageScreen> {
  TelegramWebApp get telegram => TelegramWebApp.instance;
  final TextEditingController messageIdController = TextEditingController();

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 300), initEvents);
  }

  void initEvents() {
    TelegramWebApp.instance.onEvent(ShareMessageSentEvent(shareMessageSent));
    TelegramWebApp.instance.onEvent(ShareMessageFailedEvent(shareMessageFailed));
  }

  @override
  void dispose() {
    stopEvents();
    messageIdController.dispose();
    super.dispose();
  }

  void stopEvents() {
    TelegramWebApp.instance.offEvent(ShareMessageSentEvent(shareMessageSent));
    TelegramWebApp.instance.offEvent(ShareMessageFailedEvent(shareMessageFailed));
  }

  void shareMessageSent() {
    print("Got shareMessageSent event");
    if (mounted) {
      "Got shareMessageSent event".showSnackbar(context);
    }
  }

  void shareMessageFailed(String error) {
    print("Got shareMessageFailed event: $error");
    if (mounted) {
      "Got shareMessageFailed event: $error".showSnackbar(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TeleAppbar(title: 'Share Message Screen', top: safeAreaTop),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: messageIdController,
              maxLines: 1,
              decoration: const InputDecoration(label: Text("Enter Message Id")),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Start Download'),
              onPressed: () async {
                bool result = await telegram.shareMessage(messageIdController.text.trim());
                if (mounted) {
                  "Share message result: $result".showSnackbar(context);
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
