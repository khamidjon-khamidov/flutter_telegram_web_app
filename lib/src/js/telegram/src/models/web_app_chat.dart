part of '../../telegram_js_models.dart';

@JS("WebAppChat")
class WebAppChat {
  @JS("id")
  external int get id;

  @JS("type")
  external String get type;

  @JS("title")
  external String get title;

  @JS("username")
  external String? get username;

  @JS("photo_url")
  external String? get photoUrl;
}
