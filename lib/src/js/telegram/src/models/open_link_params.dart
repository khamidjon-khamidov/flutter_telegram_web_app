part of '../../telegram_js_models.dart';

@JS()
@anonymous
class OpenLinkParams {
  external factory OpenLinkParams({
    @JS("try_instant_view") required bool tryInstantView,
  });

  @JS("try_instant_view")
  external bool get tryInstantView;
}
