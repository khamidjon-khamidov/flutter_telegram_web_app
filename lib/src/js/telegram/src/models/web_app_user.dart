part of '../../telegram_js_models.dart';

@JS("WebAppUser")
class WebAppUser {
  @JS("id")
  external int get id;

  @JS("is_bot")
  external bool? get isBot;

  @JS("is_premium")
  external bool? get isPremium;

  @JS("first_name")
  external String get firstName;

  @JS("last_name")
  external String? get lastName;

  @JS("username")
  external String? get username;

  @JS("photo_url")
  external String? get photoUrl;

  @JS("language_code")
  external String? get languageCode;

  @JS("added_to_attachment_menu")
  external bool? get addedToAttachmentMenu;

  @JS("allows_write_to_pm")
  external bool? get allowedToWritePm;
}
