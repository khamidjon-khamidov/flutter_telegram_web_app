import 'package:js/js.dart';

@JS()
@anonymous
class OpenLinkParams {
  external factory OpenLinkParams({
    @JS("try_instant_view") required bool tryInstantView,
  });

  @JS("try_instant_view")
  external bool get tryInstantView;
}