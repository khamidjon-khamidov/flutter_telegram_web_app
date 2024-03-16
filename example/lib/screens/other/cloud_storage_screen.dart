import 'package:example/widgets/expandable_tile_with_widget.dart';
import 'package:flutter/material.dart';
import 'package:telegram_web_app/telegram_web_app.dart';

class CloudStorageScreen extends StatefulWidget {
  const CloudStorageScreen({super.key});

  @override
  State<CloudStorageScreen> createState() => _CloudStorageScreenState();
}

class _CloudStorageScreenState extends State<CloudStorageScreen> {
  HapticFeedback get hapticFeedback => TelegramWebApp.instance.hapticFeedback;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cloud Storage')),
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
