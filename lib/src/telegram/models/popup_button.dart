class PopupButton {
  final String id;

  /// Optional. Type of the button. Set to default by default.
  final String type;

  /// Optional. The text to be displayed on the button, 0-64 characters.
  /// Required if type is default or destructive. Irrelevant for other types.
  final String? text;

  PopupButton._(this.id, this.type, [this.text]) : assert((text?.length ?? 0) <= 64);

  /// button with the default style
  factory PopupButton.defaultType(String id, String text) => PopupButton._(id, 'default', text);

  /// a button with a style that indicates a destructive action (e.g. “Remove”, “Delete”, etc.).
  factory PopupButton.destructive(String id, String text) => PopupButton._(id, 'destructive', text);

  /// button with the localized text “Ok”
  factory PopupButton.ok(String id) => PopupButton._(id, 'ok');

  /// button with the localized text “Close”
  factory PopupButton.close(String id) => PopupButton._(id, 'close');

  /// button with the localized text “Cancel”
  factory PopupButton.cancel(String id) => PopupButton._(id, 'cancel');

  Record get asRecord => text != null ? (id: id, type: type, text: text) : (id: id, type: type);
}
