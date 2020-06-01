import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';

Map token;

Future<String> signin(
    {@required String email, @required String password}) async {
  print('signin');
  final signURL = "http://10.0.2.2:8080/api/auth/signin";
  Map signdata = {'email': email.toString(), 'password': password.toString()};
  var body = json.encode(signdata);
  var response = await http.post(
    signURL,
    body: body,
    headers: {"Content-Type": "application/json"},
  );
  if (response.statusCode == 200) {
    token = json.decode(response.body);
    print(token['accessToken']);
    return token['accessToken'];
  } else {
    return 'unsuccessful';
  }
}
