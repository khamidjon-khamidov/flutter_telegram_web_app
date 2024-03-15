import 'package:flutter/material.dart';
import 'package:telegram_web_app/telegram_web_app.dart';

class InfoExpandableTile extends StatelessWidget {
  final String title;
  final String description;
  const InfoExpandableTile(
    this.title,
    this.description, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: TelegramWebApp.instance.themeParams.buttonColor,
      child: ExpansionTile(
        title: Text(
          title,
          style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
        children: <Widget>[
          ListTile(
            title: Text(
              description,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
