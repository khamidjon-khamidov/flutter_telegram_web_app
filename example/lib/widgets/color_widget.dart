import 'package:flutter/material.dart';
import 'package:telegram_web_app/telegram_web_app.dart';

class ColorWidget extends StatelessWidget {
  final String name;
  final String color;
  const ColorWidget(this.name, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: color.toColor() ?? Colors.tealAccent,
            border: Border.all(color: Colors.black45, width: 4),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        const SizedBox(width: 8),
        Text(name, style: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500)),
      ],
    );
  }
}
