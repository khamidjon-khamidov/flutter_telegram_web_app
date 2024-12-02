import 'package:flutter/material.dart';

class TeleAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double top;

  const TeleAppbar({
    super.key,
    required this.title,
    required this.top,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: top),
      child: AppBar(title: Text(title)),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + top);
}
