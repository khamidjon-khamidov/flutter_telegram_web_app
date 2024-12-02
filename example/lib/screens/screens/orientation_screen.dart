import 'package:example/screens/util/app_bar_ext.dart';
import 'package:example/screens/util/string_snackbar_extension.dart';
import 'package:example/screens/widget/tele_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as sr;
import 'package:telegram_web_app/telegram_web_app.dart';

import '../../widgets/expandable_tile.dart';
import '../../widgets/list_button.dart';

class OrientationScreen extends StatefulWidget {
  const OrientationScreen({super.key});

  @override
  State<OrientationScreen> createState() => _OrientationScreenState();
}

class _OrientationScreenState extends State<OrientationScreen> {
  DeviceOrientation get deviceOrientation => TelegramWebApp.instance.deviceOrientation;

  TextEditingController controller = TextEditingController();

  int refreshRate = 1000;
  bool needAbsolute = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 300), initEvents);
  }

  void initEvents() {
    TelegramWebApp.instance.onEvent(DeviceOrientationStartedEvent(orientationStarted));
    TelegramWebApp.instance.onEvent(DeviceOrientationStoppedEvent(orientationStopped));
    TelegramWebApp.instance.onEvent(DeviceOrientationFailedEvent(orientationFailed));
    TelegramWebApp.instance.onEvent(DeviceOrientationChangedEvent(orientationChanged));
  }

  @override
  void dispose() {
    stopEvents();
    controller.dispose();
    super.dispose();
  }

  void stopEvents() {
    TelegramWebApp.instance.offEvent(DeviceOrientationStartedEvent(orientationStarted));
    TelegramWebApp.instance.offEvent(DeviceOrientationStoppedEvent(orientationStopped));
    TelegramWebApp.instance.offEvent(DeviceOrientationFailedEvent(orientationFailed));
    TelegramWebApp.instance.offEvent(DeviceOrientationChangedEvent(orientationChanged));
  }

  void lockOrientation() {
    TelegramWebApp.instance.lockOrientation();
    setState(() {});
  }

  void unlockOrientation() {
    TelegramWebApp.instance.unlockOrientation();
    setState(() {});
  }

  bool get isOrientationLocked => TelegramWebApp.instance.isOrientationLocked;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TeleAppbar(title: 'Orientation', top: safeAreaTop),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            InfoExpandableTile(
              'isOrientationLocked',
              isOrientationLocked.toString(),
              expanded: true,
            ),
            const SizedBox(height: 16),
            ListButton('lockOrientation', onPress: lockOrientation),
            ListButton('unlockOrientation', onPress: unlockOrientation),
            const SizedBox(height: 16),
            InfoExpandableTile(
              'DeviceOrientation',
              "   isStarted: ${deviceOrientation.isStarted}\n"
                  "   absolute: ${deviceOrientation.absolute}\n"
                  "   alpha: ${deviceOrientation.alpha}\n"
                  "   beta: ${deviceOrientation.beta}\n"
                  "   gamma: ${deviceOrientation.gamma}\n",
              expanded: true,
            ),
            const SizedBox(height: 16),
            const Text("Start tracking params", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Row(
              children: [
                Checkbox(
                  value: needAbsolute,
                  onChanged: (val) => setState(() => needAbsolute = (val ?? false)),
                ),
                const SizedBox(width: 8),
                const Text("Need Absolute"),
              ],
            ),
            const SizedBox(height: 12),
            TextField(
              controller: controller,
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

              deviceOrientation.start(
                  DeviceOrientationStartParams(
                    refreshRate: refreshRate,
                    needAbsolute: needAbsolute,
                  ), onResult: (bool success) {
                "orientation started: $success".showSnackbar(context);
              });
            }),
            ListButton('stopTracking', onPress: () {
              deviceOrientation.stop(onResult: (bool success) {
                "orientation stopped: $success".showSnackbar(context);
              });
            })
          ],
        ),
      ),
    );
  }

  void orientationStarted() {
    print("Got orientationStarted event");
    "Orientation started".showSnackbar(context);
  }

  void orientationStopped() {
    print("Got orientationStopped event");
    "Orientation stopped".showSnackbar(context);
  }

  void orientationFailed(String error) {
    print("Got orientationFailed event");
    "Orientation failed: $error".showSnackbar(context);
  }

  void orientationChanged() {
    if (context.mounted) setState(() {});
  }
}
