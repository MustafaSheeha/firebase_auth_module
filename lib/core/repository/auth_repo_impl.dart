import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_module/core/repository/auth_repo.dart';
import 'package:firebase_auth_module/core/services/auth_service.dart';

class AuthRepoImpl implements AuthRepo {
  final AuthService _authService;
  AuthRepoImpl(this._authService);

  @override
  Future<bool> isLoggedIn() async {
    final user = await _authService.authStateChanges.first;
    return user != null;
  }

  @override
  Future<User?> login(String email, String password) async {
    final result =
        await _authService.signInWithEmailAndPassword(email, password);
    return result;
  }

  @override
  Future<void> logout() async {
    await _authService.signOut();
  }

  @override
  Future<User?> register(String email, String password) async {
    final result =
        await _authService.createUserWithEmailAndPassword(email, password);
    return result;
  }
}
