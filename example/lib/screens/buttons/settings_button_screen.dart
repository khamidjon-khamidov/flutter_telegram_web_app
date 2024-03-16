import 'package:flutter/material.dart';
import 'package:telegram_web_app/telegram_web_app.dart' as tg;
import 'package:telegram_web_app/telegram_web_app.dart';

import '../../widgets/expandable_tile.dart';

class SettingsButtonScreen extends StatefulWidget {
  const SettingsButtonScreen({super.key});

  @override
  State<SettingsButtonScreen> createState() => _SettingsButtonScreenState();
}

class _SettingsButtonScreenState extends State<SettingsButtonScreen> {
  tg.SettingsButton get settingsButton => TelegramWebApp.instance.settingButton;

  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    settingsButton.onClick(onButtonPress);
  }

  @override
  void dispose() {
    super.dispose();
    settingsButton.offClick(onButtonPress);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings Button')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 12),
            InfoExpandableTile('isVisible', settingsButton.isVisible.toString(), expanded: true),
            const SizedBox(height: 12),
            // Show/Hide button
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      settingsButton.show();
                      setState(() {});
                    },
                    child: const Text("Show button")),
                const SizedBox(width: 16),
                ElevatedButton(
                    onPressed: () {
                      settingsButton.hide();
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
