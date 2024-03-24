import 'dart:js' as js;
import 'dart:js';

abstract class JsUtil {
  static dynamic toDartSimpleObject(thing) {
    if (thing is js.JsArray) {
      List res = [];
      js.JsArray a = thing;
      for (var otherthing in a) {
        res.add(toDartSimpleObject(otherthing));
      }
      return res;
    } else if (thing is js.JsObject) {
      Map res = {};
      js.JsObject o = thing;
      Iterable<String> k = js.context['Object'].callMethod('keys', [o]);
      for (var k in k) {
        res[k] = toDartSimpleObject(o[k]);
      }
      return res;
    } else {
      return thing;
    }
  }

  /// Converts the specified JavaScript [value] to a Dart instance.
  static dynamic convertToDart(value) {
    // Value types.
    if (value == null) return null;
    if (value is bool || value is num || value is DateTime || value is String) return value;

    // JsArray
    if (value is Iterable) return value.map(convertToDart).toList();

    // JsObject.
    return Map.fromIterable(_getKeysOfObject(value), value: (key) => convertToDart(value[key]));
  }

  static List<String> _getKeysOfObject(JsObject object) =>
      (context['Object'] as JsFunction).callMethod('keys', [object]);
}
