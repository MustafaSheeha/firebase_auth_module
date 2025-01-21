import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepo {
  Future<User?> login(String email, String password);
  Future<User?> register(String email, String password);
  Future<void> logout();
  Future<bool> isLoggedIn();
}
