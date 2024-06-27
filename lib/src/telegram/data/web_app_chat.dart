import 'package:js/js.dart';

/// This object represents a chat.
/// 
/// More details at [Telegram API](https://core.telegram.org/bots/webapps#webappchat)
@JS("WebAppChat")
class WebAppChat {
  /// Unique identifier for this chat.
  /// This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it.
  /// But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this identifier.
  @JS("id")
  external int get id;

  /// Optional. URL of the chat’s photo.
  /// The photo can be in .jpeg or .svg formats.
  /// Only returned for Mini Apps launched from the attachment menu.
  @JS("photo_url")
  external String get photoUrl;

  /// Type of chat, can be either “group”, “supergroup” or “channel”
  @JS("type")
  external String get type;

  /// Title of the chat
  @JS("title")
  external String get title;

  /// Optional. Username of the chat
  @JS("username")
  external String get username;
}

extension WebAppChatExt on WebAppChat {
  String toReadableString() {
    return """
        id: $id,
        photo_url: $photoUrl,
        type: $type,
        title: $title,
        username: $username
      """;
  }
}