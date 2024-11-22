import 'package:flutter/material.dart';
import 'package:telegram_web_app/telegram_web_app.dart' as tg;
import 'package:telegram_web_app/telegram_web_app.dart';

import '../../widgets/expandable_tile.dart';

class BackButtonScreen extends StatefulWidget {
  const BackButtonScreen({super.key});

  @override
  State<BackButtonScreen> createState() => _BackButtonScreenState();
}

class _BackButtonScreenState extends State<BackButtonScreen> {
  tg.BackButton get backButton => TelegramWebApp.instance.backButton;

  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    backButton.onClick(onButtonPress);
  }

  @override
  void dispose() {
    super.dispose();
    backButton.offClick(onButtonPress);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Main Button')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 12),
            InfoExpandableTile('isVisible', backButton.isVisible.toString(), expanded: true),
            const SizedBox(height: 12),
            // Show/Hide button
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      backButton.show();
                      setState(() {});
                    },
                    child: const Text("Show button")),
                const SizedBox(width: 16),
                ElevatedButton(
                    onPressed: () {
                      backButton.hide();
                      setState(() {});
                    },
                    child: const Text("Hide button")),
              ],
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  void onButtonPress() {
    const snackBar = SnackBar(content: Text('Button pressed'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
