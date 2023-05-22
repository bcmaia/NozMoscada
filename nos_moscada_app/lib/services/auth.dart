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
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (null == googleUser) throw Exception('Could not resolve google id.');

      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final UserCredential userCredential = await _firebaseAuth.signInWithCredential(authCredential);
      final User? user = userCredential.user;

      if (null == user) throw Exception('Could not resolve google user.');

      // if (user != null) {
      //   // checking if uid or email is null
      //   // assert(user.uid != null);
      //   assert(user.email != null);

      //   // var uid = user.uid;
      //   // var userEmail = user.email;

      //   assert(!user.isAnonymous);
      //   // assert(await user.getIdToken() != null);

      //   // final User currentUser = Auth().currentUser;
      //   // assert(user.uid == currentUser.uid);

      //   // SharedPreferences prefs = await SharedPreferences.getInstance();
      //   // prefs.setBool('auth', true);
      // }
       

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
