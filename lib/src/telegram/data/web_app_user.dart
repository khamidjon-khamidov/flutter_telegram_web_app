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

extension WebAppUserExt on WebAppUser {
  String toReadableString() {
    // return "nothing";
    return """
        id: ${id},
        is_bot: ${is_bot},
        is_premium: ${is_premium},
        first_name: ${first_name},
        last_name: ${last_name},
        username: ${username},
        photo_url: ${photo_url},
        language_code: ${language_code}
      """;
  }
}
