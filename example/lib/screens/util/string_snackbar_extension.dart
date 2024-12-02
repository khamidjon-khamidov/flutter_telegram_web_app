import 'package:flutter/material.dart';

extension StringExt on String {
  void showSnackbar(BuildContext context) {
    String message = this;
    var snackBar = SnackBar(content: Text(message));
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
