import 'package:flutter/material.dart';

class InfoExpandableTile extends StatelessWidget {
  final String title;
  final String description;
  final bool expanded;

  const InfoExpandableTile(
    this.title,
    this.description, {
    this.expanded = false,
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
          ListTile(
            title: SelectableText(
              description,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
