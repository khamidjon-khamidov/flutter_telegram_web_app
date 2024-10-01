part of '../../../telegram_web_app.dart';

class ThemeParams {
  static ThemeParams? _instance;

  static ThemeParams get instance => _instance ??= ThemeParams();

  Color? get bgColor => Telegram.WebApp.themeParams.bg_color?.toColor();

  Color? get textColor => Telegram.WebApp.themeParams.text_color?.toColor();

  Color? get hintColor => Telegram.WebApp.themeParams.hint_color?.toColor();

  Color? get linkColor => Telegram.WebApp.themeParams.link_color?.toColor();

  Color? get buttonColor => Telegram.WebApp.themeParams.button_color?.toColor();

  Color? get buttonTextColor => Telegram.WebApp.themeParams.button_text_color?.toColor();

  Color? get secondaryBgColor => Telegram.WebApp.themeParams.secondary_bg_color?.toColor();

  Color? get headerBgColor => Telegram.WebApp.themeParams.header_bg_color?.toColor();

  Color? get bottomBarBgColor => Telegram.WebApp.themeParams.bottom_bar_bg_color?.toColor();

  Color? get accentTextColor => Telegram.WebApp.themeParams.accent_text_color?.toColor();

  Color? get sectionBgColor => Telegram.WebApp.themeParams.section_bg_color?.toColor();

  Color? get sectionHeaderTextColor => Telegram.WebApp.themeParams.section_header_text_color?.toColor();

  Color? get subtitleTextColor => Telegram.WebApp.themeParams.subtitle_text_color?.toColor();

  Color? get destructiveTextColor => Telegram.WebApp.themeParams.destructive_text_color?.toColor();

  Color? get sectionSeparatorColor => Telegram.WebApp.themeParams.section_separator_color?.toColor();
}
