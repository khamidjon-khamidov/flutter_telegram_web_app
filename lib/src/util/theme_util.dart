import 'package:flutter/material.dart';
import 'package:telegram_web_app/src/models/telegram_color_scheme.dart';
import 'package:telegram_web_app/telegram_web_app.dart';

abstract class TelegramThemeUtil {
  static ThemeData? getTheme(TelegramWebApp telegram) {
    ThemeData theme =
        telegram.colorScheme == TelegramColorScheme.dark ? ThemeData.dark() : ThemeData.light();

    return theme.copyWith(
      primaryColor: telegram.themeParams.headerBgColor,
      scaffoldBackgroundColor: telegram.themeParams.sectionBgColor,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: telegram.themeParams.sectionBgColor,
          textStyle: TextStyle(
            color: telegram.themeParams.buttonTextColor,
          ),
        ),
      ),
      iconTheme: theme.iconTheme.copyWith(color: telegram.themeParams.textColor),
      textTheme: theme.textTheme.apply(
        bodyColor: telegram.themeParams.textColor,
        displayColor: telegram.themeParams.subtitleTextColor,
      ),
      colorScheme: theme.colorScheme.copyWith(
        secondary: telegram.themeParams.accentTextColor,
        error: telegram.themeParams.destructiveTextColor,
      ),
      highlightColor: telegram.themeParams.linkColor,
      hintColor: telegram.themeParams.hintColor,
      cardColor: telegram.themeParams.sectionBgColor,
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: telegram.themeParams.buttonColor,
          textStyle: TextStyle(
            color: telegram.themeParams.buttonTextColor,
          ),
        ),
      ),
      appBarTheme: theme.appBarTheme.copyWith(
          foregroundColor: telegram.themeParams.sectionHeaderTextColor,
          backgroundColor: telegram.themeParams.headerBgColor,
          iconTheme: theme.appBarTheme.iconTheme?.copyWith(color: telegram.themeParams.textColor)),
    );
  }
}
