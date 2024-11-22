import 'package:example/screens/util/string_snackbar_extension.dart';
import 'package:flutter/material.dart';
import 'package:telegram_web_app/telegram_web_app.dart';

import '../../widgets/list_button.dart';

class AddToHomeScreen extends StatefulWidget {
  const AddToHomeScreen({super.key});

  @override
  State<AddToHomeScreen> createState() => _AddToHomeScreenState();
}

class _AddToHomeScreenState extends State<AddToHomeScreen> {
  TelegramWebApp get telegram => TelegramWebApp.instance;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 300), initEvents);
  }

  void initEvents() {
    TelegramWebApp.instance.onEvent(HomeScreenAddedEvent(homeScreenAdded));
    TelegramWebApp.instance.onEvent(HomeScreenCheckedEvent(homeScreenChecked));
  }

  @override
  void dispose() {
    stopEvents();
    super.dispose();
  }

  void stopEvents() {
    TelegramWebApp.instance.offEvent(HomeScreenAddedEvent(homeScreenAdded));
    TelegramWebApp.instance.offEvent(HomeScreenCheckedEvent(homeScreenChecked));
  }

  void homeScreenAdded() {
    print("Got homeScreenAdded event");
    if (mounted) {
      "Got homeScreenAdded event".showSnackbar(context);
    }
  }

  void homeScreenChecked(String status) {
    print("Got homeScreenChecked event: $status");
    if (mounted) {
      "Got homeScreenChecked event: $status".showSnackbar(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add to Home Screen')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ListButton(
              'addToHomeScreen',
              onPress: telegram.addToHomeScreen,
            ),
            ListButton(
              'checkHomeScreenStatus',
              onPress: () async {
                String status = await telegram.checkHomeScreenStatus();

                if (context.mounted) {
                  "Got home screen status: $status".showSnackbar(context);
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
