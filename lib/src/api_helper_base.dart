import 'package:http/http.dart' as http;

class ApiHelperBase {
  /// Sends a GET request to the provided [url] with optional [headers].
  static Future<http.Response?> get(String url, {Map<String, String>? headers}) async {
    final defaultHeaders = {
      "Content-Type": "application/x-www-form-urlencoded"
    };

    try {
      final response = await http.get(
        Uri.parse(url),
        headers: headers ?? defaultHeaders,
      );
      return response;
    } catch (e) {
      return null;
    }
  }

  static Future<http.Response?> post(
      String url, {
        Map<String, String>? headers,
        String? body,
      }) async {
    final defaultHeaders = {
      "Content-Type": "application/x-www-form-urlencoded",
    };

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: headers ?? defaultHeaders,
        body: body,
      );
      return response;
    } catch (e) {
      print("POST request error: $e");
      return null;
    }
  }


}
