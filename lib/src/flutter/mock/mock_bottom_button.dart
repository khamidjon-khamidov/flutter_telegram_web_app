import 'dart:ui';

import 'package:telegram_web_app/telegram_web_app.dart';

class MockBottomButton implements BottomButton {
  @override
  String get text => 'Some text';

  @override
  Color? get color => const Color(0xff2ea6ff);

  @override
  Color? get textColor => const Color(0xffffffff);

  @override
  bool get isVisible => true;

  @override
  bool get isActive => false;

  @override
  bool get isProgressVisible => false;

  @override
  void setText(String text) {}

  @override
  void offClick(void Function() callback) {}

  @override
  void onClick(void Function() callback) {}

  @override
  void show() {}

  @override
  void hide() {}

  @override
  void enable() {}

  @override
  void disable() {}

  @override
  void showProgress(bool leaveActive) {}

  @override
  void hideProgress() {}

  @override
  void setParams(BottomButtonParams secondaryButtonParams) {}
}