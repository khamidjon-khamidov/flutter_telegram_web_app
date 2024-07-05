part of '../../../telegram_web_app.dart';

/// This object contains data that is transferred to the Mini App when it is opened.
/// It is empty if the Mini App was launched from a [keyboard button](https://core.telegram.org/bots/webapps#keyboard-button-mini-apps) or from [inline mode](https://core.telegram.org/bots/webapps#inline-mode-mini-apps).
///
/// More details at [Telegram API](https://core.telegram.org/bots/webapps#webappinitdata)
class WebAppInitData {
  final telegram_js_models.WebAppInitData _jsInitData;
  WebAppInitData(this._jsInitData);

  /// Optional. A unique identifier for the Mini App session,
  /// required for sending messages via the answerWebAppQuery method.
  String? get queryId => _jsInitData.queryId;

  /// Optional. An object containing data about the current user.
  WebAppUser? get user => _jsInitData.user != null ? WebAppUser(_jsInitData.user!) : null;

  /// Optional. An object containing data about the chat partner
  /// of the current user in the chat where the bot was launched
  /// via the attachment menu. Returned only for private chats
  /// and only for Mini Apps launched via the attachment menu.
  WebAppUser? get receiver =>
      _jsInitData.receiver != null ? WebAppUser(_jsInitData.receiver!) : null;

  /// Optional. An object containing data about the chat where
  /// the bot was launched via the attachment menu. Returned for
  /// supergroups, channels and group chats – only for Mini Apps
  /// launched via the attachment menu.
  WebAppChat? get chat => _jsInitData.chat != null ? WebAppChat(_jsInitData.chat!) : null;

  /// Optional. Type of the chat from which the Mini App was opened.
  /// Can be either “sender” for a private chat with the user opening
  /// the link, “private”, “group”, “supergroup”, or “channel”. Returned
  /// only for Mini Apps launched from direct links.
  String? get chatType => _jsInitData.chatType;

  /// Optional. Global identifier, uniquely corresponding to the chat from
  /// which the Mini App was opened. Returned only for Mini Apps launched
  /// from a direct link
  String? get chatInstance => _jsInitData.chatInstance;

  /// Optional. The value of the startattach parameter, passed via link.
  /// Only returned for Mini Apps when launched from the attachment menu via link.
  //
  // The value of the start_param parameter will also be passed in the
  // GET-parameter tgWebAppStartParam, so the Mini App can load the correct
  // interface right away.
  String? get startParam => _jsInitData.startParam;

  /// Optional. Time in seconds, after which a message can be sent via
  /// the answerWebAppQuery method.
  int? get canSendAfter => _jsInitData.canSendAfter;

  /// Unix time when the form was opened.
  int? get authDate => _jsInitData.authDate;

  /// A hash of all passed parameters, which the bot server can use
  /// to check their validity.
  String? get hash => _jsInitData.hash;

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
