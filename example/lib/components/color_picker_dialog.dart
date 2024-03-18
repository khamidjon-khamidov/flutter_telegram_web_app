import 'package:flutter/material.dart';
import "package:flutter_hsvcolor_picker/flutter_hsvcolor_picker.dart";

Future<Color?> selectColor(BuildContext context) {
  Color? selectedColor;

  return showDialog<Color?>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Choose color'),
        content: ColorPicker(
          color: Colors.blue,
          onChanged: (value) {
            selectedColor = value;
          },
          initialPicker: Picker.paletteHue,
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('Done'),
            onPressed: () {
              Navigator.of(context).pop(selectedColor);
            },
          ),
        ],
      );
    },
  );
}
