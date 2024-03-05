// ignore_for_file: non_constant_identifier_names

import 'package:js/js.dart';
import 'package:telegram_web_app/src/telegram/data/web_app_chat.dart';
import 'package:telegram_web_app/src/telegram/data/web_app_user.dart';

/// https://core.telegram.org/bots/webapps#webappinitdata
@JS()
class WebAppInitData {
  external String? get query_id;
  external WebAppUser? get user;
  external WebAppUser? get receiver;
  external WebAppChat? get chat;
  external String? get chat_type;
  external String? get chat_instance;
  external String? get start_param;
  external int? get can_send_after;
  external int? get auth_date;
  external String? get hash;
}

extension WebAppInitDataExt on WebAppInitData {
  String toReadableString() {
    return """
      query_id: $query_id, 
      user: ${user?.toReadableString()}, 
      receiver: ${receiver?.toReadableString()}, 
      chat: ${chat?.toReadableString()}, 
      chat_type: $chat_type,
      chat_instance: $chat_instance,
      start_param: $start_param,
      can_send_after: $can_send_after,
      auth_date: $auth_date,
      hash: $hash
    """;
  }
}
