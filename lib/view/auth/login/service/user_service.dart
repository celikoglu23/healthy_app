import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class IUserService {
  Future<UserCredential> signInWithGoogle();
  Future<void> signOut();
}

class UserService extends IUserService {
  final FirebaseAuth _fireBaseAuth = FirebaseAuth.instance;

  @override
  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? accountOwner = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication auth = await accountOwner!.authentication;
    final userCredential = GoogleAuthProvider.credential(
      accessToken: auth.accessToken,
      idToken: auth.idToken,
    );
    return await FirebaseAuth.instance.signInWithCredential(userCredential);
  }

  @override
  Future<void> signOut() async {
    return await _fireBaseAuth.signOut();
  }
}
