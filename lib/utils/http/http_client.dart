import 'dart:convert';
import 'package:http/http.dart' as http;

class HTTPHelper {
  static const String _baseUrl = 'https://api.example.com';

  static Future<Map<String, dynamic>> get(String url) async {
    final response = await http.get(Uri.parse('$_baseUrl/$url'));
    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> post(String url, dynamic data) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/$url'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> put(String url, dynamic data) async {
    final response = await http.put(
      Uri.parse('$_baseUrl/$url'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> delete(String url) async {
    final response = await http.delete(
      Uri.parse('$_baseUrl/$url'),
    );
    return _handleResponse(response);
  }

  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    }
    throw Exception('Failed to load data: ${response.statusCode}');
  }
}
