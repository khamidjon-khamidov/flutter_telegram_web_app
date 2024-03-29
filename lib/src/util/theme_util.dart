import 'package:flutter/material.dart';
import 'package:telegram_web_app/src/models/telegram_color_scheme.dart';
import 'package:telegram_web_app/telegram_web_app.dart';

abstract class TelegramThemeUtil {
  static TelegramWebApp get _tg =>
      TelegramWebApp.instance.isSupported ? TelegramWebApp.instance : TelegramWebAppFake();

  static ThemeData? get currentTheme => getTheme(_tg.colorScheme);

  static ThemeData? getTheme(TelegramColorScheme telegramTheme) {
    ThemeData theme =
        telegramTheme == TelegramColorScheme.dark ? ThemeData.dark() : ThemeData.light();

    return theme.copyWith(
      primaryColor: _tg.themeParams.headerBgColor,
      scaffoldBackgroundColor: _tg.themeParams.sectionBgColor,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: _tg.themeParams.sectionBgColor,
          textStyle: TextStyle(
            color: _tg.themeParams.buttonTextColor,
          ),
        ),
      ),
      iconTheme: theme.iconTheme.copyWith(color: _tg.themeParams.textColor),
      textTheme: theme.textTheme.apply(
        bodyColor: _tg.themeParams.textColor,
        displayColor: _tg.themeParams.subtitleTextColor,
      ),
      colorScheme: theme.colorScheme.copyWith(
        secondary: _tg.themeParams.accentTextColor,
        error: _tg.themeParams.destructiveTextColor,
      ),
      highlightColor: _tg.themeParams.linkColor,
      hintColor: _tg.themeParams.hintColor,
      cardColor: _tg.themeParams.sectionBgColor,
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: _tg.themeParams.buttonColor,
          textStyle: TextStyle(
            color: _tg.themeParams.buttonTextColor,
          ),
        ),
      ),
      appBarTheme: theme.appBarTheme.copyWith(
          foregroundColor: _tg.themeParams.sectionHeaderTextColor,
          backgroundColor: _tg.themeParams.headerBgColor,
          iconTheme: theme.appBarTheme.iconTheme?.copyWith(color: _tg.themeParams.textColor)),
    );
  }
}
