import 'package:example/screens/util/string_snackbar_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as sr;
import 'package:telegram_web_app/telegram_web_app.dart';

import '../../widgets/expandable_tile.dart';
import '../../widgets/list_button.dart';

class GyroscopeScreen extends StatefulWidget {
  const GyroscopeScreen({super.key});

  @override
  State<GyroscopeScreen> createState() => _GyroscopeScreenState();
}

class _GyroscopeScreenState extends State<GyroscopeScreen> {
  Gyroscope get gyroscope => TelegramWebApp.instance.gyroscope;

  TextEditingController controller = TextEditingController();

  int refreshRate = 1000;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 300), initEvents);
  }

  void initEvents() {
    TelegramWebApp.instance.onEvent(GyroscopeStartedEvent(gyroscopeStarted));
    TelegramWebApp.instance.onEvent(GyroscopeStoppedEvent(gyroscopeStopped));
    TelegramWebApp.instance.onEvent(GyroscopeFailedEvent(gyroscopeFailed));
    TelegramWebApp.instance.onEvent(GyroscopeChangedEvent(gyroscopeChanged));
  }

  @override
  void dispose() {
    stopEvents();
    controller.dispose();
    super.dispose();
  }

  void stopEvents() {
    TelegramWebApp.instance.offEvent(GyroscopeStartedEvent(gyroscopeStarted));
    TelegramWebApp.instance.offEvent(GyroscopeStoppedEvent(gyroscopeStopped));
    TelegramWebApp.instance.offEvent(GyroscopeFailedEvent(gyroscopeFailed));
    TelegramWebApp.instance.offEvent(GyroscopeChangedEvent(gyroscopeChanged));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('gyroscope')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            InfoExpandableTile(
              'Gyroscope',
              "   isStarted: ${gyroscope.isStarted}\n"
                  "   x: ${gyroscope.x}\n"
                  "   y: ${gyroscope.y}\n"
                  "   z: ${gyroscope.z}\n",
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

              gyroscope.start(
                  GyroscopeStartParams(
                    refreshRate: refreshRate,
                  ), onResult: (bool success) {
                "gyroscope started: $success".showSnackbar(context);
              });
            }),
            ListButton('stopTracking', onPress: () {
              gyroscope.stop(onResult: (bool success) {
                "gyroscope stopped: $success".showSnackbar(context);
              });
            })
          ],
        ),
      ),
    );
  }

  void gyroscopeStarted() {
    print("Got gyroscopeStarted event");
    "gyroscope started".showSnackbar(context);
  }

  void gyroscopeStopped() {
    print("Got gyroscopeStopped event");
    "gyroscope stopped".showSnackbar(context);
  }

  void gyroscopeFailed(String error) {
    print("Got gyroscopeFailed event");
    "gyroscope failed: $error".showSnackbar(context);
  }

  void gyroscopeChanged() {
    if (context.mounted) setState(() {});
  }
}
