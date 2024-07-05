part of '../../../telegram_web_app.dart';

class ThemeParams {
  static ThemeParams? _instance;
  static ThemeParams get instance => _instance ??= ThemeParams();

  Color? get bgColor => telegram_js.themeParams.button_color.toColor();

  Color? get textColor => telegram_js.themeParams.text_color.toColor();

  Color? get hintColor => telegram_js.themeParams.hint_color.toColor();

  Color? get linkColor => telegram_js.themeParams.link_color.toColor();

  Color? get buttonColor => telegram_js.themeParams.button_color.toColor();

  Color? get buttonTextColor => telegram_js.themeParams.button_text_color.toColor();

  Color? get secondaryBgColor => telegram_js.themeParams.secondary_bg_color.toColor();

  Color? get headerBgColor => telegram_js.themeParams.header_bg_color.toColor();

  Color? get accentTextColor => telegram_js.themeParams.accent_text_color.toColor();

  Color? get sectionBgColor => telegram_js.themeParams.section_bg_color.toColor();

  Color? get sectionHeaderTextColor => telegram_js.themeParams.section_header_text_color.toColor();

  Color? get subtitleTextColor => telegram_js.themeParams.subtitle_text_color.toColor();

  Color? get destructiveTextColor => telegram_js.themeParams.destructive_text_color.toColor();
}
