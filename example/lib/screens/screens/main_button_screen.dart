import 'package:example/screens/util/app_bar_ext.dart';
import 'package:example/screens/util/string_snackbar_extension.dart';
import 'package:example/screens/widget/tele_appbar.dart';
import 'package:flutter/material.dart';
import 'package:telegram_web_app/telegram_web_app.dart';

import '../../widgets/expandable_tile.dart';
import '../../widgets/one_color_widget.dart';

class MainButtonScreen extends StatefulWidget {
  const MainButtonScreen({
    super.key,
    required this.button,
  });

  final BottomButton button;

  @override
  State<MainButtonScreen> createState() => _MainButtonScreenState();
}

class _MainButtonScreenState extends State<MainButtonScreen> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.text = widget.button.text;
    widget.button.onClick(onButtonPress);
  }

  @override
  void dispose() {
    super.dispose();
    widget.button.offClick(onButtonPress);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TeleAppbar(title: 'Main Button', top: safeAreaTop),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            InfoExpandableTile('text', widget.button.text, expanded: true),
            const SizedBox(height: 12),
            OneColorExpandableTile('color', widget.button.color, expanded: true),
            const SizedBox(height: 12),
            OneColorExpandableTile('textColor', widget.button.textColor, expanded: true),
            const SizedBox(height: 12),
            InfoExpandableTile('isVisible', widget.button.isVisible.toString(), expanded: true),
            const SizedBox(height: 12),
            InfoExpandableTile('isActive', widget.button.isActive.toString(), expanded: true),
            const SizedBox(height: 12),
            InfoExpandableTile(
              'isProgressVisible',
              widget.button.isProgressVisible.toString(),
              expanded: true,
            ),
            const SizedBox(height: 12),
            // Show/Hide button
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      widget.button.show();
                      setState(() {});
                    },
                    child: const Text("Show button")),
                const SizedBox(width: 16),
                ElevatedButton(
                    onPressed: () {
                      widget.button.hide();
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
                      widget.button.enable();
                      setState(() {});
                    },
                    child: const Text("Enable")),
                const SizedBox(width: 16),
                ElevatedButton(
                    onPressed: () {
                      widget.button.disable();
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
                      widget.button.showProgress(false);
                      setState(() {});
                    },
                    child: const Text("Show progress")),
                const SizedBox(width: 16),
                ElevatedButton(
                    onPressed: () {
                      widget.button.hideProgress();
                      setState(() {});
                    },
                    child: const Text("Hide progress")),
              ],
            ),
            const SizedBox(height: 12),
            TextField(
              controller: controller,
              onChanged: widget.button.setText,
            ),
            const SizedBox(height: 16),
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
