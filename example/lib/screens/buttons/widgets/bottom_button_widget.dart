import 'package:example/widgets/expandable_tile.dart';
import 'package:example/widgets/one_color_widget.dart';
import 'package:flutter/material.dart';
import 'package:telegram_web_app/telegram_web_app.dart';

class BottomButtonWidget extends StatelessWidget {
  const BottomButtonWidget(
    this.bottomButton,
    this.controller, {
    required this.onStateChange,
    super.key,
  });

  final BottomButton bottomButton;
  final TextEditingController controller;
  final VoidCallback onStateChange;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InfoExpandableTile('text', bottomButton.text, expanded: true),
        const SizedBox(height: 12),
        OneColorExpandableTile('color', bottomButton.color, expanded: true),
        const SizedBox(height: 12),
        OneColorExpandableTile('textColor', bottomButton.textColor, expanded: true),
        const SizedBox(height: 12),
        InfoExpandableTile('isVisible', bottomButton.isVisible.toString(), expanded: true),
        const SizedBox(height: 12),
        InfoExpandableTile('isActive', bottomButton.isActive.toString(), expanded: true),
        const SizedBox(height: 12),
        InfoExpandableTile(
          'isProgressVisible',
          bottomButton.isProgressVisible.toString(),
          expanded: true,
        ),
        const SizedBox(height: 12),
        // Show/Hide button
        Row(
          children: [
            ElevatedButton(
                onPressed: () {
                  bottomButton.show();
                  onStateChange.call();
                },
                child: const Text("Show button")),
            const SizedBox(width: 16),
            ElevatedButton(
                onPressed: () {
                  bottomButton.hide();
                  onStateChange.call();
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
                  bottomButton.enable();
                  onStateChange.call();
                },
                child: const Text("Enable")),
            const SizedBox(width: 16),
            ElevatedButton(
                onPressed: () {
                  bottomButton.disable();
                  onStateChange.call();
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
                  bottomButton.showProgress(false);
                  onStateChange.call();
                },
                child: const Text("Show progress")),
            const SizedBox(width: 16),
            ElevatedButton(
                onPressed: () {
                  bottomButton.hideProgress();
                  onStateChange.call();
                },
                child: const Text("Hide progress")),
          ],
        ),
        const SizedBox(height: 12),
        TextField(
          controller: controller,
          onChanged: bottomButton.setText,
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
