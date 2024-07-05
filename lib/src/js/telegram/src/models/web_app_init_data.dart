part of '../../telegram_js_models.dart';

@JS("WebAppInitData")
class WebAppInitData {
  @JS("query_id")
  external String? get queryId;

  @JS("user")
  external WebAppUser? get user;

  @JS("receiver")
  external WebAppUser? get receiver;

  @JS("chat")
  external WebAppChat? get chat;

  @JS("chat_type")
  external String? get chatType;

  @JS("chat_instance")
  external String? get chatInstance;

  @JS("start_param")
  external String? get startParam;

  @JS("can_send_after")
  external int? get canSendAfter;

  @JS("auth_date")
  external int? get authDate;

  @JS("hash")
  external String? get hash;
}
