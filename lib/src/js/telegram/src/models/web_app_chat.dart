part of '../../telegram_js_models.dart';

@JS("WebAppChat")
class WebAppChat {
  external int get id;

  external String get type;

  external String get title;

  external String? get username;

  external String? get photo_url;
}
