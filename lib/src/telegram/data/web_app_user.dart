import 'package:js/js.dart';

/// This object contains the data of the Mini App user.
/// 
/// More details at [Telegram API](https://core.telegram.org/bots/webapps#webappuser)
@JS("WebAppUser")
class WebAppUser {
  /// A unique identifier for the user or bot.
  /// This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it.
  /// It has at most 52 significant bits, so a 64-bit integer or a double-precision float type is safe for storing this identifier.
  @JS("id")
  external int get id;

  /// True, if this user is a bot.
  /// Returns in the receiver field only.
  @JS("is_bot")
  external bool? get isBot;

  /// True, if this user is a Telegram Premium user.
  @JS("is_premium")
  external bool? get isPremium;

  /// First name of the user or bot.
  @JS("first_name")
  external String get firstName;

  /// Last name of the user or bot.
  @JS("last_name")
  external String? get lastName;

  /// Username of the user or bot.
  @JS("username")
  external String? get username;

  /// URL of the user’s profile photo.
  /// The photo can be in .jpeg or .svg formats.
  /// Only returned for Mini Apps launched from the attachment menu.
  @JS("photo_url")
  external String? get photoUrl;

  /// IETF language tag of the user's language.
  /// Returns in user field only.
  @JS("language_code")
  external String? get languageCode;

  /// True, if this user added the bot to the attachment menu.
  @JS("added_to_attachment_menu")
  external bool? get addedToAttachmentMenu;

  /// True, if this user allowed the bot to message them.
  @JS("allows_write_to_pm")
  external bool? get allowedToWritePm;
}

extension WebAppUserExt on WebAppUser {
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