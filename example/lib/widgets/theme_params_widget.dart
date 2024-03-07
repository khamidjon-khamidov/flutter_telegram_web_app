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
          ColorWidget('bg_color', themeParams.bg_color),
          const SizedBox(height: 8),
          ColorWidget('text_color', themeParams.text_color),
          const SizedBox(height: 8),
          ColorWidget('hint_color', themeParams.hint_color),
          const SizedBox(height: 8),
          ColorWidget('link_color', themeParams.link_color),
          const SizedBox(height: 8),
          ColorWidget('button_color', themeParams.button_color),
          const SizedBox(height: 8),
          ColorWidget('button_text_color', themeParams.button_text_color),
          const SizedBox(height: 8),
          ColorWidget('secondary_bg_color', themeParams.secondary_bg_color),
          const SizedBox(height: 8),
          ColorWidget('header_bg_color', themeParams.header_bg_color),
          const SizedBox(height: 8),
          ColorWidget('accent_text_color', themeParams.accent_text_color),
          const SizedBox(height: 8),
          ColorWidget('section_bg_color', themeParams.section_bg_color),
          const SizedBox(height: 8),
          ColorWidget('section_header_text_color', themeParams.section_header_text_color),
          const SizedBox(height: 8),
          ColorWidget('subtitle_text_color', themeParams.subtitle_text_color),
          const SizedBox(height: 8),
          ColorWidget('destructive_text_color', themeParams.destructive_text_color),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
