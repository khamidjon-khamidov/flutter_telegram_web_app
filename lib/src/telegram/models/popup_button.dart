class PopupButton {
  final String id;

  /// Optional. Type of the button. Set to default by default.
  final String? type;

  /// Optional. The text to be displayed on the button, 0-64 characters.
  /// Required if type is default or destructive. Irrelevant for other types.
  final String? text;

  PopupButton(this.id, [PopupButtonType? buttonType, this.text]) : type = buttonType?.name;
}

enum PopupButtonType {
  defaultType("default"), // a button with the default style,
  ok("ok"), // a button with the localized text “OK”,
  close("close"), // a button with the localized text “Close”,
  cancel("cancel"), // a button with the localized text “Cancel”,
  destructive(
      "destructive"); // a button with a style that indicates a destructive action (e.g. “Remove”, “Delete”, etc.).

  const PopupButtonType(this.type);

  final String type;
}
