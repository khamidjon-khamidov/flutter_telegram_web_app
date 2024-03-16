import 'package:flutter/material.dart';
import 'package:telegram_web_app/telegram_web_app.dart';

import '../../widgets/expandable_tile.dart';
import '../../widgets/one_color_widget.dart';

class MainButtonScreen extends StatefulWidget {
  const MainButtonScreen({super.key});

  @override
  State<MainButtonScreen> createState() => _MainButtonScreenState();
}

class _MainButtonScreenState extends State<MainButtonScreen> {
  MainButton get mainButton => TelegramWebApp.instance.mainButton;

  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.text = mainButton.text;
    mainButton.onClick(onButtonPress);
  }

  @override
  void dispose() {
    super.dispose();
    mainButton.offClick(onButtonPress);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Main Button')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            InfoExpandableTile('text', mainButton.text, expanded: true),
            const SizedBox(height: 12),
            OneColorExpandableTile('color', mainButton.color, expanded: true),
            const SizedBox(height: 12),
            OneColorExpandableTile('textColor', mainButton.textColor, expanded: true),
            const SizedBox(height: 12),
            InfoExpandableTile('isVisible', mainButton.isVisible.toString(), expanded: true),
            const SizedBox(height: 12),
            InfoExpandableTile('isActive', mainButton.isActive.toString(), expanded: true),
            const SizedBox(height: 12),
            InfoExpandableTile(
              'isProgressVisible',
              mainButton.isProgressVisible.toString(),
              expanded: true,
            ),
            const SizedBox(height: 12),
            // Show/Hide button
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      mainButton.show();
                      setState(() {});
                    },
                    child: const Text("Show button")),
                const SizedBox(width: 16),
                ElevatedButton(
                    onPressed: () {
                      mainButton.hide();
                      setState(() {});
                    },
                    child: const Text("Hide button")),
              ],
            ),
            const SizedBox(height: 12),
            // Enable/Disable
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      mainButton.enable();
                      setState(() {});
                    },
                    child: const Text("Enable")),
                const SizedBox(width: 16),
                ElevatedButton(
                    onPressed: () {
                      mainButton.disable();
                      setState(() {});
                    },
                    child: const Text("Disable")),
              ],
            ),
            const SizedBox(height: 12),
            // Show/Hide progress
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      mainButton.showProgress(false);
                      setState(() {});
                    },
                    child: const Text("Show progress")),
                const SizedBox(width: 16),
                ElevatedButton(
                    onPressed: () {
                      mainButton.hideProgress();
                      setState(() {});
                    },
                    child: const Text("Hide progress")),
              ],
            ),
            const SizedBox(height: 12),
            TextField(
              controller: controller,
              onChanged: mainButton.setText,
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
