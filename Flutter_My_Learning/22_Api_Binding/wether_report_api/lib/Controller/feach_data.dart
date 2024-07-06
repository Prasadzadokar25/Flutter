import 'package:http/http.dart' as http;
import 'dart:convert';

class FeachData {
  static String wetherApiUrl = "";

  static Future<Map> feachWetherInfo() async {
    Uri uri = Uri.parse(wetherApiUrl);
    http.Response response = await http.get(uri);
    var responseData = json.decode(response.body);
    return responseData;
  }
}
