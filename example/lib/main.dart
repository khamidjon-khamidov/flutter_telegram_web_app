import 'package:example/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:telegram_web_app/telegram_web_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telegram Web App Example',
      theme: TelegramThemeUtil.currentTheme,
      home: const MainScreen(),
    );
  }
}
