import 'dart:io';

import 'package:commondocs/features/auth_page/repository/auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authControllerProvider = Provider((ref) {
  final authRepository = ref.watch(authRepositoryProvider);

  return AuthController(authRepository: authRepository);
});

class AuthController {
  AuthController({required this.authRepository});

  final AuthRepository authRepository;

  Future<void> register(
      {required String name,
      required String username,
      required String password}) async {
    final res = await authRepository.register(
        name: name, username: username, password: password);
    if (res.statusCode == HttpStatus.created) {
      print('User created');
    } else {
      print('User not created');
    }
  }
}
