import 'dart:ui';

import 'package:telegram_web_app/src/telegram/internal.dart' as tg;
import 'package:telegram_web_app/telegram_web_app.dart';

abstract class ThemeParams {
  static ThemeParams? _instance;
  static ThemeParams get instance => _instance ??= _ThemeParamsImpl._();

  Color? get bgColor;
  Color? get textColor;
  Color? get hintColor;
  Color? get linkColor;
  Color? get buttonColor;
  Color? get buttonTextColor;
  Color? get secondaryBgColor;
  Color? get headerBgColor;
  Color? get accentTextColor;
  Color? get sectionBgColor;
  Color? get sectionHeaderTextColor;
  Color? get subtitleTextColor;
  Color? get destructiveTextColor;
}

class _ThemeParamsImpl extends ThemeParams {
  _ThemeParamsImpl._();

  @override
  Color? get bgColor => tg.themeParams.button_color.toColor();

  @override
  Color? get textColor => tg.themeParams.text_color.toColor();

  @override
  Color? get hintColor => tg.themeParams.hint_color.toColor();

  @override
  Color? get linkColor => tg.themeParams.link_color.toColor();

  @override
  Color? get buttonColor => tg.themeParams.button_color.toColor();

  @override
  Color? get buttonTextColor => tg.themeParams.button_text_color.toColor();

  @override
  Color? get secondaryBgColor => tg.themeParams.secondary_bg_color.toColor();

  @override
  Color? get headerBgColor => tg.themeParams.header_bg_color.toColor();

  @override
  Color? get accentTextColor => tg.themeParams.accent_text_color.toColor();

  @override
  Color? get sectionBgColor => tg.themeParams.section_bg_color.toColor();

  @override
  Color? get sectionHeaderTextColor => tg.themeParams.section_header_text_color.toColor();

  @override
  Color? get subtitleTextColor => tg.themeParams.subtitle_text_color.toColor();

  @override
  Color? get destructiveTextColor => tg.themeParams.destructive_text_color.toColor();
}
