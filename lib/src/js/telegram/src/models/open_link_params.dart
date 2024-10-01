part of '../../telegram_js_models.dart';

@JS('OpenLinkParams')
extension type OpenLinkParamsJSObject._(JSObject _) implements JSObject {
  external factory OpenLinkParamsJSObject({
    required bool try_instant_view,
  });

  external bool get try_instant_view;
}
