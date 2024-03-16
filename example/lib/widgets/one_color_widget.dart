import 'package:flutter/material.dart';

import 'color_widget.dart';

class OneColorExpandableTile extends StatelessWidget {
  final String title;
  final Color? color;
  final bool expanded;

  const OneColorExpandableTile(
    this.title,
    this.color, {
    this.expanded = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        initiallyExpanded: expanded,
        title: Text(
          title,
          style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
        children: <Widget>[
          ColorWidget(title, color),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
