import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

abstract class AuthService extends GetxService {
  Future<void> createUserWithEmailAndPassword(String email, String password);
  Future<void> signInWithEmailAndPassword(String email, String password);
  Future<void> signOut();
  Stream<User?> get authStateChanges;
}