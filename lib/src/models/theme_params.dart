import 'dart:ui';

import 'package:telegram_web_app/src/telegram/internal.dart' as tg;
import 'package:telegram_web_app/telegram_web_app.dart';

class ThemeParams {
  ThemeParams._();
  static ThemeParams? _instance;
  static ThemeParams get instance => _instance ??= ThemeParams._();

  Color? get bgColor => tg.themeParams.button_color.toColor();
  Color? get textColor => tg.themeParams.text_color.toColor();
  Color? get hintColor => tg.themeParams.hint_color.toColor();
  Color? get linkColor => tg.themeParams.link_color.toColor();
  Color? get buttonColor => tg.themeParams.button_color.toColor();
  Color? get buttonTextColor => tg.themeParams.button_text_color.toColor();
  Color? get secondaryBgColor => tg.themeParams.secondary_bg_color.toColor();
  Color? get headerBgColor => tg.themeParams.header_bg_color.toColor();
  Color? get accentTextColor => tg.themeParams.accent_text_color.toColor();
  Color? get sectionBgColor => tg.themeParams.section_bg_color.toColor();
  Color? get sectionHeaderTextColor => tg.themeParams.section_header_text_color.toColor();
  Color? get subtitleTextColor => tg.themeParams.subtitle_text_color.toColor();
  Color? get destructiveTextColor => tg.themeParams.destructive_text_color.toColor();
}
