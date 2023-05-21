import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Auth {
  // Getting an instance of FirebaseAuth
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  // Setting a getter to the current user
  User? get currentUser => _firebaseAuth.currentUser;

  // Setting a getter to a stream that listens to changes in the auth state.
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  // TODO: apply createUserWithEmailAndPassword
  // Future<void> createUserWithEmailAndPassword({
  //   required String email,
  //   required String password,
  // }) async {
  //   await _firebaseAuth.createUserWithEmailAndPassword(
  //     email: email,
  //     password: password,
  //   );
  // }

  Future<void> googleLogin() async {
    try {
      final googleUser = await GoogleSignIn().signIn();
      if (null == googleUser) throw Exception('Could not resolve google id.');

      final googleAuth = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await _firebaseAuth.signInWithCredential(authCredential);

      // ignore: unused_catch_clause
    } on FirebaseAuthException catch (e) {
      // handle error
      rethrow;
    }
  }

  Future<void> anonLogin() async {
    try {
      await FirebaseAuth.instance.signInAnonymously();
      // ignore: unused_catch_clause
    } on FirebaseAuthException catch (e) {
      // handle error
      // TODO: handle error
    }
  }

}
