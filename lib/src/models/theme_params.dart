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
  Color? get bgColor => tg.themeParams.buttonColor.toColor();

  @override
  Color? get textColor => tg.themeParams.textColor.toColor();

  @override
  Color? get hintColor => tg.themeParams.hintColor.toColor();

  @override
  Color? get linkColor => tg.themeParams.linkColor.toColor();

  @override
  Color? get buttonColor => tg.themeParams.buttonColor.toColor();

  @override
  Color? get buttonTextColor => tg.themeParams.buttonTextColor.toColor();

  @override
  Color? get secondaryBgColor => tg.themeParams.secondaryBgColor.toColor();

  @override
  Color? get headerBgColor => tg.themeParams.headerBgColor.toColor();

  @override
  Color? get accentTextColor => tg.themeParams.accentTextColor.toColor();

  @override
  Color? get sectionBgColor => tg.themeParams.sectionBgColor.toColor();

  @override
  Color? get sectionHeaderTextColor => tg.themeParams.sectionHeaderTextColor.toColor();

  @override
  Color? get subtitleTextColor => tg.themeParams.subtitleTextColor.toColor();

  @override
  Color? get destructiveTextColor => tg.themeParams.destructiveTextColor.toColor();
}
