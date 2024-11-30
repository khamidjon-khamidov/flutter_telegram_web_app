import 'package:example/screens/util/string_snackbar_extension.dart';
import 'package:example/widgets/list_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:telegram_web_app/telegram_web_app.dart';

class EmojiStatusScreen extends StatefulWidget {
  const EmojiStatusScreen({super.key});

  @override
  State<EmojiStatusScreen> createState() => _EmojiStatusScreenState();
}

class _EmojiStatusScreenState extends State<EmojiStatusScreen> {
  TextEditingController controller = TextEditingController();
  TextEditingController customEmojiIdController = TextEditingController();

  bool isEmojiStatusAccessAllowed = false;
  int? duration = 1;

  @override
  void initState() {
    super.initState();
    initEvents();
  }

  void initEvents() {
    TelegramWebApp.instance.onEvent(EmojiStatusSetEvent(emojiStatusSet));
    TelegramWebApp.instance.onEvent(EmojiStatusFailedEvent(emojiStatusFailed));
    TelegramWebApp.instance
        .onEvent(EmojiStatusAccessRequestedEvent(emojiStatusAccessRequested));
  }

  @override
  void dispose() {
    stopEvents();
    super.dispose();
  }

  void stopEvents() {
    TelegramWebApp.instance.offEvent(EmojiStatusSetEvent(emojiStatusSet));
    TelegramWebApp.instance.offEvent(EmojiStatusFailedEvent(emojiStatusFailed));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emoji Status'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ListButton("requestEmojiStatusAccess", onPress: () async {
              final result =
                  await TelegramWebApp.instance.requestEmojiStatusAccess();
              print("requestEmojiStatusAccess result: $result");

              setState(() {
                isEmojiStatusAccessAllowed = result;
              });
            }),
            if (isEmojiStatusAccessAllowed) ...[
              const SizedBox(height: 16),
              TextField(
                controller: controller,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                ],
                maxLines: 1,
                decoration:
                    const InputDecoration(hintText: "Duration in seconds"),
              ),
              TextField(
                controller: customEmojiIdController,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                ],
                maxLines: 1,
                decoration: const InputDecoration(
                    hintText: "Custom Emoji ID (e.g. 5444965061749644170)"),
              ),
              const SizedBox(height: 16),
              ListButton("setEmojiStatus", onPress: () async {
                final result = await TelegramWebApp.instance.setEmojiStatus(
                    customEmojiIdController.text.isEmpty
                        ? "5444965061749644170"
                        : customEmojiIdController.text,
                    params: controller.text.isEmpty
                        ? null
                        : EmojiStatusParams(
                            duration: int.tryParse(controller.text)));
                print("setEmojiStatus result: $result");
              }),
            ]
          ],
        ),
      ),
    );
  }

  void emojiStatusSet() {
    print("Received `emojiStatusSet` event");
    "emoji status set".showSnackbar(context);
    setState(() {});
  }

  void emojiStatusFailed(String error) {
    print("Received `emojiStatusFailed($error)` event");
    "emoji status failed - $error".showSnackbar(context);
    setState(() {});
  }

  void emojiStatusAccessRequested(String status) {
    print("Received `emojiStatusAccessRequested($status)` event");
    "emoji status access requested - $status".showSnackbar(context);
    setState(() {});
  }
}
