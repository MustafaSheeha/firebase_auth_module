import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_module/core/services/auth_service.dart';
import 'package:get/get.dart';

class FirebaseAuthService extends AuthService {
  static FirebaseAuthService get to => Get.find<FirebaseAuthService>();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  @override
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  @override
  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
