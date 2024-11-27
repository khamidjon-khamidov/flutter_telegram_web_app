import 'package:example/screens/util/string_snackbar_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as sr;
import 'package:telegram_web_app/telegram_web_app.dart';

import '../../widgets/expandable_tile.dart';
import '../../widgets/list_button.dart';

class AccelerometerScreen extends StatefulWidget {
  const AccelerometerScreen({super.key});

  @override
  State<AccelerometerScreen> createState() => _AccelerometerScreenState();
}

class _AccelerometerScreenState extends State<AccelerometerScreen> {
  Accelerometer get accelerometer => TelegramWebApp.instance.accelerometer;

  TextEditingController controller = TextEditingController();

  int refreshRate = 1000;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 300), initEvents);
  }

  void initEvents() {
    TelegramWebApp.instance.onEvent(AccelerometerStartedEvent(accelerometerStarted));
    TelegramWebApp.instance.onEvent(AccelerometerStoppedEvent(accelerometerStopped));
    TelegramWebApp.instance.onEvent(AccelerometerFailedEvent(accelerometerFailed));
    TelegramWebApp.instance.onEvent(AccelerometerChangedEvent(accelerometerChanged));
  }

  @override
  void dispose() {
    stopEvents();
    controller.dispose();
    super.dispose();
  }

  void stopEvents() {
    TelegramWebApp.instance.offEvent(AccelerometerStartedEvent(accelerometerStarted));
    TelegramWebApp.instance.offEvent(AccelerometerStoppedEvent(accelerometerStopped));
    TelegramWebApp.instance.offEvent(AccelerometerFailedEvent(accelerometerFailed));
    TelegramWebApp.instance.offEvent(AccelerometerChangedEvent(accelerometerChanged));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('accelerometer')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            InfoExpandableTile(
              'Accelerometer',
              "   isStarted: ${accelerometer.isStarted}\n"
                  "   x: ${accelerometer.x}\n"
                  "   y: ${accelerometer.y}\n"
                  "   z: ${accelerometer.z}\n",
              expanded: true,
            ),
            const SizedBox(height: 16),
            const Text("Start tracking params", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              inputFormatters: [
                sr.FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
              ],
              maxLines: 1,
              maxLength: 4,
              decoration: const InputDecoration(hintText: "Between 20-1000"),
            ),
            ListButton('startTracking', onPress: () {
              try {
                var ref = int.parse(controller.text);
                if (ref < 20 || ref > 1000) throw UnsupportedError("Refresh rate not in range");
                refreshRate = ref;
              } catch (ex) {
                "Error parsing: ${controller.text}".showSnackbar(context);
              }

              accelerometer.start(
                  AccelerometerStartParams(
                    refreshRate: refreshRate,
                  ), onResult: (bool success) {
                "accelerometer started: $success".showSnackbar(context);
              });
            }),
            ListButton('stopTracking', onPress: () {
              accelerometer.stop(onResult: (bool success) {
                "accelerometer stopped: $success".showSnackbar(context);
              });
            })
          ],
        ),
      ),
    );
  }

  void accelerometerStarted() {
    print("Got accelerometerStarted event");
    "accelerometer started".showSnackbar(context);
  }

  void accelerometerStopped() {
    print("Got accelerometerStopped event");
    "accelerometer stopped".showSnackbar(context);
  }

  void accelerometerFailed(String error) {
    print("Got accelerometerFailed event");
    "accelerometer failed: $error".showSnackbar(context);
  }

  void accelerometerChanged() {
    if (context.mounted) setState(() {});
  }
}
