import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final authRepositoryProvider = Provider((ref) {
  return AuthRepository();
});

class AuthRepository {
  Future<http.Response> register(
      {required String name,
      required String username,
      required String password}) async {
    return await http.post(
      Uri.parse('${dotenv.env['LOCALHOST_URL']}${AuthRoutes.register}'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
        <String, String>{
          'username': username,
          'password': password,
          'name': name,
        },
      ),
    );
  }
}

class AuthRoutes {
  static const String register = '/register';
}
