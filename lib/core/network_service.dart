
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:photo_gallery/core/app_urls.dart';

class NetworkService {
  Future getItems(String path) async {
    Map<String, String> originalHeaders = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
    var client = http.Client();

    var url = Uri.https(AppUrls.baseURL, path);
    Response response = http.Response("", 200);

    response = await client.get(url, headers: originalHeaders);

    if (response.statusCode == 200) {
      final data = response.body;

      return data;
    } else {
      return [];
    }
  }
}
