import 'package:flutter/material.dart';

extension StrinExt on String {
  void showSnackbar(BuildContext context) {
    String message = this;
    var snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
