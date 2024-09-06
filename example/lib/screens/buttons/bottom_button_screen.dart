import 'package:example/screens/util/string_snackbar_extension.dart';
import 'package:example/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:telegram_web_app/telegram_web_app.dart';

import 'widgets/bottom_button_widget.dart';

class BottomButtonsScreen extends StatefulWidget {
  const BottomButtonsScreen({super.key});

  @override
  State<BottomButtonsScreen> createState() => _BottomButtonsScreenState();
}

class _BottomButtonsScreenState extends State<BottomButtonsScreen> {
  // BottomButton get mainButton => TelegramWebApp.instance.mainButton;
  BottomButton get secondaryButton => TelegramWebApp.instance.secondaryButton;

  late TextEditingController mainButtonController;
  late TextEditingController secondaryButtonController;

  @override
  void initState() {
    super.initState();
    mainButtonController = TextEditingController();
    secondaryButtonController = TextEditingController();

    // mainButtonController.text = mainButton.text;
    secondaryButtonController.text = secondaryButton.text;
    // mainButton.onClick(onButtonPress);
    // secondaryButton.onClick(onButtonPress);
  }

  @override
  void dispose() {
    super.dispose();
    // mainButtonController.dispose();
    secondaryButtonController.dispose();
    // mainButton.offClick(onButtonPress);
    // secondaryButton.offClick(onButtonPress);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bottom Buttons')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // const TitleWidget('Main Button'),
            // BottomButtonWidget(
            //   mainButton,
            //   mainButtonController,
            //   onStateChange: () => setState(() {}),
            // ),
            const SizedBox(height: 24),
            const TitleWidget('Secondary Button'),
            BottomButtonWidget(
              secondaryButton,
              secondaryButtonController,
              onStateChange: () => setState(() {}),
            ),
          ],
        ),
      ),
    );
  }

  void onButtonPress() {
    TelegramWebApp.instance.openLink(
      'https://telegram.org/blog/new-saved-messages-and-9-more',
      tryInstantView: true,
    );
    'Button pressed'.showSnackbar(context);
  }
}
