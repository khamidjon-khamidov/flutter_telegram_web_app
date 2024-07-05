part of '../../../telegram_web_app.dart';

/// This object represents a chat.
///
/// More details at [Telegram API](https://core.telegram.org/bots/webapps#webappchat)
class WebAppChat {
  final telegram_js_models.WebAppChat _webAppChat;

  WebAppChat(this._webAppChat);

  int get id => _webAppChat.id;

  /// Type of chat, can be either “group”, “supergroup” or “channel”
  String get type => _webAppChat.type;

  /// Title of the chat
  String get title => _webAppChat.title;

  /// Optional. Username of the chat
  String? get username => _webAppChat.username;

  /// Optional. URL of the chat’s photo.
  /// The photo can be in .jpeg or .svg formats.
  /// Only returned for Mini Apps launched from the attachment menu.
  String? get photoUrl => _webAppChat.photoUrl;

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
