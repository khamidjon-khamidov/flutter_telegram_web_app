import 'package:js/js.dart';
import 'package:telegram_web_app/src/telegram/data/web_app_chat.dart';
import 'package:telegram_web_app/src/telegram/data/web_app_user.dart';

/// This object contains data that is transferred to the Mini App when it is opened. 
/// It is empty if the Mini App was launched from a [keyboard button](https://core.telegram.org/bots/webapps#keyboard-button-mini-apps) or from [inline mode](https://core.telegram.org/bots/webapps#inline-mode-mini-apps).
/// 
/// More details at [Telegram API](https://core.telegram.org/bots/webapps#webappinitdata)
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

extension WebAppInitDataExt on WebAppInitData {
  String toReadableString() {
    return """
      query_id: $queryId, 
      user: ${user?.toReadableString()}, 
      receiver: ${receiver?.toReadableString()}, 
      chat: ${chat?.toReadableString()}, 
      chat_type: $chatType,
      chat_instance: $chatInstance,
      start_param: $startParam,
      can_send_after: $canSendAfter,
      auth_date: $authDate,
      hash: $hash
    """;
  }
}