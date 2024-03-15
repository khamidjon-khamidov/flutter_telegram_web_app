import 'package:example/widgets/title_and_description.dart';
import 'package:flutter/material.dart';
import 'package:telegram_web_app/telegram_web_app.dart';

class MainButtonScreen extends StatefulWidget {
  const MainButtonScreen({super.key});

  @override
  State<MainButtonScreen> createState() => _MainButtonScreenState();
}

class _MainButtonScreenState extends State<MainButtonScreen> {
  final TelegramWebApp telegram = TelegramWebApp.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Main Button')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TitleAndDescription('text', telegram.mainButton.text),
          ],
        ),
      ),
    );
  }
}
