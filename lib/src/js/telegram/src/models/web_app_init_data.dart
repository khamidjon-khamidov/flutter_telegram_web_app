part of '../../telegram_js_models.dart';

@JS("WebAppInitData")
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
