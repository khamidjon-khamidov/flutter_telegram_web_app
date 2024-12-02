import 'package:flutter/material.dart';
import 'package:telegram_web_app/telegram_web_app.dart';

extension AppBarExt on State<StatefulWidget> {
  double get safeAreaTop =>
      (TelegramWebApp.instance.safeAreaInset.top + TelegramWebApp.instance.contentSafeAreaInset.top)
          .toDouble();
}
