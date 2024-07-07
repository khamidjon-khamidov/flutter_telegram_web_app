import 'package:example/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:telegram_web_app/telegram_web_app.dart';

void main() async {
  try {
    if (TelegramWebApp.instance.isSupported) {
      await TelegramWebApp.instance.ready();
      Future.delayed(const Duration(seconds: 1), TelegramWebApp.instance.expand);
    }
  } catch (e) {
    print("Error happened in Flutter while loading Telegram $e");
    // add delay for 'Telegram not loading sometimes' bug
    await Future.delayed(const Duration(milliseconds: 200));
    main();
    return;
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telegram Web App Example',
      theme: TelegramThemeUtil.getTheme(TelegramWebApp.instance),
      home: const MainScreen(),
    );
  }
}
