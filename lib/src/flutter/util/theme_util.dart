part of '../../../telegram_web_app.dart';

abstract class TelegramThemeUtil {
  static ThemeData? getTheme(TelegramWebApp telegram) {
    ThemeData theme =
        telegram.colorScheme == TelegramColorScheme.dark ? ThemeData.dark() : ThemeData.light();

    return theme.copyWith(
      primaryColor: telegram.themeParams.headerBgColor,
      scaffoldBackgroundColor: telegram.themeParams.sectionBgColor,
      progressIndicatorTheme: ProgressIndicatorThemeData(color: telegram.themeParams.buttonColor),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: telegram.themeParams.accentTextColor,
        selectionHandleColor: telegram.themeParams.accentTextColor,
        selectionColor: telegram.themeParams.accentTextColor?.withAlpha(150),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: telegram.themeParams.sectionBgColor,
          textStyle: TextStyle(
            color: telegram.themeParams.buttonTextColor,
          ),
        ),
      ),
      segmentedButtonTheme: theme.segmentedButtonTheme.copyWith(
        style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          iconColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) {
              if (!states.contains(WidgetState.selected)) {
                return telegram.themeParams.buttonColor ?? Colors.blue;
              }
              return telegram.themeParams.textColor ?? Colors.black;
            },
          ),
          backgroundColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.selected)) {
                return telegram.themeParams.buttonColor?.withAlpha(80) ?? Colors.blue;
              }
              return Colors.transparent;
            },
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: theme.outlinedButtonTheme.style?.copyWith(
          textStyle: WidgetStateProperty.all(
            TextStyle(color: telegram.themeParams.buttonColor ?? Colors.blue),
          ),
          foregroundColor: WidgetStateProperty.all(
            telegram.themeParams.buttonColor ?? Colors.blue,
          ),
          surfaceTintColor: WidgetStateProperty.all(
            telegram.themeParams.buttonColor ?? Colors.blue,
          ),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          iconColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) {
              if (!states.contains(WidgetState.selected)) {
                return telegram.themeParams.buttonColor ?? Colors.blue;
              }
              return telegram.themeParams.textColor ?? Colors.black;
            },
          ),
          backgroundColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.selected)) {
                return telegram.themeParams.buttonColor?.withAlpha(80) ?? Colors.blue;
              }
              return Colors.transparent;
            },
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
          foregroundColor: telegram.themeParams.buttonColor,
          textStyle: TextStyle(color: telegram.themeParams.buttonTextColor),
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.all(telegram.themeParams.accentTextColor),
        overlayColor: WidgetStateProperty.all(telegram.themeParams.accentTextColor?.withAlpha(20)),
      ),
      appBarTheme: theme.appBarTheme.copyWith(
        foregroundColor: telegram.themeParams.sectionHeaderTextColor,
        backgroundColor: telegram.themeParams.sectionBgColor,
        iconTheme: theme.appBarTheme.iconTheme?.copyWith(color: telegram.themeParams.textColor),
      ),
    );
  }
}
