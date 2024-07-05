part of '../../../telegram_web_app.dart';

class ThemeParams {
  static ThemeParams? _instance;
  static ThemeParams get instance => _instance ??= ThemeParams();

  Color? get bgColor => telegram_js.themeParams.buttonColor.toColor();

  Color? get textColor => telegram_js.themeParams.textColor.toColor();

  Color? get hintColor => telegram_js.themeParams.hintColor.toColor();

  Color? get linkColor => telegram_js.themeParams.linkColor.toColor();

  Color? get buttonColor => telegram_js.themeParams.buttonColor.toColor();

  Color? get buttonTextColor => telegram_js.themeParams.buttonTextColor.toColor();

  Color? get secondaryBgColor => telegram_js.themeParams.secondaryBgColor.toColor();

  Color? get headerBgColor => telegram_js.themeParams.headerBgColor.toColor();

  Color? get accentTextColor => telegram_js.themeParams.accentTextColor.toColor();

  Color? get sectionBgColor => telegram_js.themeParams.sectionBgColor.toColor();

  Color? get sectionHeaderTextColor => telegram_js.themeParams.sectionHeaderTextColor.toColor();

  Color? get subtitleTextColor => telegram_js.themeParams.subtitleTextColor.toColor();

  Color? get destructiveTextColor => telegram_js.themeParams.destructiveTextColor.toColor();
}
