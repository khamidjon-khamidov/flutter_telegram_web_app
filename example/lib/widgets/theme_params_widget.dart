import 'package:example/widgets/color_widget.dart';
import 'package:flutter/material.dart';
import 'package:telegram_web_app/telegram_web_app.dart';

class ThemeParamsWidget extends StatelessWidget {
  final ThemeParams themeParams;
  const ThemeParamsWidget(this.themeParams, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        title: const Text(
          'Theme Params',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
        children: <Widget>[
          ColorWidget('bg_color', themeParams.bgColor),
          const SizedBox(height: 8),
          ColorWidget('text_color', themeParams.textColor),
          const SizedBox(height: 8),
          ColorWidget('hint_color', themeParams.hintColor),
          const SizedBox(height: 8),
          ColorWidget('link_color', themeParams.linkColor),
          const SizedBox(height: 8),
          ColorWidget('button_color', themeParams.buttonColor),
          const SizedBox(height: 8),
          ColorWidget('button_text_color', themeParams.buttonTextColor),
          const SizedBox(height: 8),
          ColorWidget('secondary_bg_color', themeParams.secondaryBgColor),
          const SizedBox(height: 8),
          ColorWidget('header_bg_color', themeParams.headerBgColor),
          const SizedBox(height: 8),
          ColorWidget('bottom_bar_bg_color', themeParams.bottomBarBgColor),
          const SizedBox(height: 8),
          ColorWidget('accent_text_color', themeParams.accentTextColor),
          const SizedBox(height: 8),
          ColorWidget('section_bg_color', themeParams.sectionBgColor),
          const SizedBox(height: 8),
          ColorWidget('section_header_text_color', themeParams.sectionHeaderTextColor),
          const SizedBox(height: 8),
          ColorWidget('subtitle_text_color', themeParams.subtitleTextColor),
          const SizedBox(height: 8),
          ColorWidget('destructive_text_color', themeParams.destructiveTextColor),
          const SizedBox(height: 8),
          ColorWidget('section_separator_color', themeParams.sectionSeparatorColor),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
