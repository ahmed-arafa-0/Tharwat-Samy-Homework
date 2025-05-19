import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({
    required String url,
    dynamic body,
    String? token,
  }) async {
    Map<String, String> headers = {};

    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }

    http.Response response = await http.get(Uri.parse(url), headers: headers);
    if (response.statusCode == 200) {
      // print('DATA IS ${response.body}');
      return jsonDecode(response.body);
    } else {
      throw Exception(
        'Error with status code ${response.statusCode} \n body : ${response.body}',
      );
    }
  }

  Future<dynamic> post({
    required String url,
    dynamic body,
    String? token,
  }) async {
    Map<String, String> headers = {};

    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    http.Response response = await http.post(
      Uri.parse(url),
      body: body,
      headers: headers,
    );
    print(response.body);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
        'Error with status code ${response.statusCode} \n body : ${response.body}',
      );
    }
  }

  Future<dynamic> put({
    required String url,
    dynamic body,
    String? token,
  }) async {
    Map<String, String> headers = {};

    // headers.addAll({'Content-Type': 'application/x-www-form-urlencoded'});

    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    http.Response response = await http.put(
      Uri.parse(url),
      body: body,
      headers: headers,
    );
    print(response.body);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
        'Error with status code ${response.statusCode} \n body : ${response.body}',
      );
    }
  }

  /*
      {
        'Accept': 'application/json',
        // 'Content-Type': 'multipart/form-data',
        'Authorization': 'Barer $token',
      }
    */
}
