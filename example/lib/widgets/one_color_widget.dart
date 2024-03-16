import 'package:flutter/material.dart';

import 'color_widget.dart';

class OneColorExpandableTile extends StatelessWidget {
  final String title;
  final Color? color;

  const OneColorExpandableTile(this.title, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        title: Text(
          title,
          style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
        children: <Widget>[
          ColorWidget(title, color),
        ],
      ),
    );
  }
}
