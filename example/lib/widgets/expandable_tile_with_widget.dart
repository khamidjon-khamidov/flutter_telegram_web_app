import 'package:flutter/material.dart';

class InfoExpandableTileWithWidget extends StatelessWidget {
  final String title;
  final Widget child;
  final bool expanded;

  const InfoExpandableTileWithWidget(
    this.title,
    this.child, {
    this.expanded = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        initiallyExpanded: expanded,
        title: Text(
          title,
          style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
        children: <Widget>[
          child,
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
