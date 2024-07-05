import 'dart:collection';
import 'dart:convert';

abstract class DataParser {
  static Map<String, String?> parseAmpersandSeparatedData(String rawData) {
    Map<String, String?> parameters = HashMap();
    List<String> pairs = rawData.split("&");
    for (String pair in pairs) {
      int idx = pair.indexOf("=");
      String key = idx > 0 ? utf8.decode(pair.substring(0, idx).codeUnits) : pair;
      String? value =
          idx > 0 && pair.length > idx + 1 ? utf8.decode(pair.substring(idx + 1).codeUnits) : null;
      parameters[key] = value;
    }

    return parameters;
  }
}
