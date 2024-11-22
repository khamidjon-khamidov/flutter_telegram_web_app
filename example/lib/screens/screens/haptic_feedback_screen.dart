import 'package:example/widgets/expandable_tile_with_widget.dart';
import 'package:flutter/material.dart';
import 'package:telegram_web_app/telegram_web_app.dart';

class HapticFeedbackScreen extends StatefulWidget {
  const HapticFeedbackScreen({super.key});

  @override
  State<HapticFeedbackScreen> createState() => _HapticFeedbackScreenState();
}

class _HapticFeedbackScreenState extends State<HapticFeedbackScreen> {
  HapticFeedback get hapticFeedback => TelegramWebApp.instance.hapticFeedback;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Haptic Feedback')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            InfoExpandableTileWithWidget(
              'Impact Occurred',
              Wrap(
                children: HapticFeedbackImpact.values
                    .map((impact) => ElevatedButton(
                          onPressed: () => hapticFeedback.impactOccurred(impact),
                          child: Text(impact.name),
                        ))
                    .toList(),
              ),
            ),
            const SizedBox(height: 12),
            InfoExpandableTileWithWidget(
              'Notification Occurred',
              Wrap(
                children: HapticFeedbackNotificationType.values
                    .map((notification) => ElevatedButton(
                          onPressed: () => hapticFeedback.notificationOccurred(notification),
                          child: Text(notification.name),
                        ))
                    .toList(),
              ),
            ),
            const SizedBox(height: 12),
            InfoExpandableTileWithWidget(
                'Selection Changed',
                ElevatedButton(
                  onPressed: hapticFeedback.selectionChanged,
                  child: const Text('Selection Changed'),
                )),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
