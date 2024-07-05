part of '../../../telegram_web_app.dart';

/// This object contains the data of the Mini App user.
///
/// More details at [Telegram API](https://core.telegram.org/bots/webapps#webappuser)
class WebAppUser {
  final telegram_js_models.WebAppUser _webAppUser;

  WebAppUser(this._webAppUser);

  /// A unique identifier for the user or bot.
  /// This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it.
  /// It has at most 52 significant bits, so a 64-bit integer or a double-precision float type is safe for storing this identifier.
  int get id => _webAppUser.id;

  /// True, if this user is a bot.
  /// Returns in the receiver field only.
  bool? get isBot => _webAppUser.is_bot;

  /// True, if this user is a Telegram Premium user.
  bool? get isPremium => _webAppUser.is_premium;

  /// First name of the user or bot.
  String get firstName => _webAppUser.first_name;

  /// Last name of the user or bot.
  String? get lastName => _webAppUser.last_name;

  /// Username of the user or bot.
  String? get username => _webAppUser.username;

  /// URL of the user’s profile photo.
  /// The photo can be in .jpeg or .svg formats.
  /// Only returned for Mini Apps launched from the attachment menu.
  String? get photoUrl => _webAppUser.photo_url;

  /// IETF language tag of the user's language.
  /// Returns in user field only.
  String? get languageCode => _webAppUser.language_code;

  /// True, if this user added the bot to the attachment menu.
  bool? get addedToAttachmentMenu => _webAppUser.added_to_attachment_menu;

  /// True, if this user allowed the bot to message them.
  bool? get allowedToWritePm => _webAppUser.allows_write_to_pm;

  String toReadableString() {
    // return "nothing";
    return """
        id: $id,
        is_bot: $isBot,
        is_premium: $isPremium,
        first_name: $firstName,
        last_name: $lastName,
        username: $username,
        photo_url: $photoUrl,
        language_code: $languageCode,
        added_to_attachment_menu: $addedToAttachmentMenu,
        allowed_write_to_pm: $allowedToWritePm
      """;
  }
}
