// ignore_for_file: non_constant_identifier_names

import 'package:js/js.dart';

///https://core.telegram.org/bots/webapps#webappuser
@JS()
class WebAppUser {
  external int get id;
  external bool get is_bot;
  external bool get is_premium;
  external String get first_name;
  external String get last_name;
  external String get username;
  external String get photo_url;
  external String get language_code;
}
