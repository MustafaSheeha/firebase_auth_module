import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

abstract class AuthService extends GetxService {
  Future<User?> createUserWithEmailAndPassword(String email, String password);
  Future<User?> signInWithEmailAndPassword(String email, String password);
  Future<void> signOut();
  Stream<User?> get authStateChanges;
}