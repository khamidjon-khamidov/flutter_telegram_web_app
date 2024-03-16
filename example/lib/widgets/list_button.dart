import 'package:flutter/material.dart';

class ListButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;

  const ListButton(
    this.text, {
    required this.onPress,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Text(
                text,
                style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
              ),
              const Spacer(),
              const Icon(Icons.chevron_right)
            ],
          ),
        ),
      ),
    );
  }
}
