import 'dart:developer';

import 'package:firebase_auth_module/core/repository/auth_repo.dart';
import 'package:firebase_auth_module/core/services/auth_service.dart';

class AuthRepoImpl implements AuthRepo {
  final AuthService _authService;
  AuthRepoImpl(this._authService);

  @override
  Future<bool> isLoggedIn()async {
    try {
      final user = await _authService.authStateChanges.first;
      return user != null;
    } catch (e) {
      log('AuthRepoImpl');
      log(e.toString());
      return false;
    }
  }

  @override
  Future<void> login(String email, String password) async {
    try {
      await _authService.signInWithEmailAndPassword(email, password);
    } catch (e) {
      log('AuthRepoImpl');
      log(e.toString());
    }
  }

  @override
  Future<void> logout() async {
    try {
      await _authService.signOut();
    } catch (e) {
      log('AuthRepoImpl');
      log(e.toString());
    }
  }

  @override
  Future<void> register(String email, String password) async {
    try {
      await _authService.createUserWithEmailAndPassword(email, password);
    } catch (e) {
      log('AuthRepoImpl');
      log(e.toString());
    }
  }
}
