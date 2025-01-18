import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthService {
  Future<void> createUserWithEmailAndPassword(String email, String password);
  Future<void> signInWithEmailAndPassword(String email, String password);
  Future<void> signOut();
  Stream<User?> get authStateChanges;
}