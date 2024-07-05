part of '../../telegram_js_models.dart';

@JS("WebAppUser")
class WebAppUser {
  external int get id;

  external bool? get is_bot;

  external String get first_name;

  external String? get last_name;

  external String? get username;

  external String? get language_code;

  external bool? get is_premium;

  external bool? get added_to_attachment_menu;

  external bool? get allows_write_to_pm;

  external String? get photo_url;
}
