enum ChatType {
  users("users"),
  bots("bots"),
  groups("groups"),
  channels("channels");

  const ChatType(this.chatType);

  final String chatType;
}
