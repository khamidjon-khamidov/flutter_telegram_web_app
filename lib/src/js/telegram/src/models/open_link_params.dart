part of '../../telegram_js_models.dart';

@JS()
@anonymous
class OpenLinkParams {
  external factory OpenLinkParams({
    required bool try_instant_view,
  });

  external bool get try_instant_view;
}
