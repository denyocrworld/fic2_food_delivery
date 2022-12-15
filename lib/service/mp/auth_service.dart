import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MPAuthService {
  static User? currentUser;
  static bool isMember = false;
  static bool isVendor = false;

  static doLoginAsMember() async {
    var isLoggedIn = await doGoogleLogin();
    if (isLoggedIn) {
      currentUser = FirebaseAuth.instance.currentUser!;
      isMember = true;
    }
    return isLoggedIn;
  }

  static doLoginAsVendor() async {
    var isLoggedIn = await doGoogleLogin();
    if (isLoggedIn) {
      currentUser = FirebaseAuth.instance.currentUser!;
      isVendor = true;
    }
    return isLoggedIn;
  }

  static Future<bool> doGoogleLogin() async {
    GoogleSignIn googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );

    try {
      await googleSignIn.disconnect();
    } catch (_) {}

    try {
      GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
      GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      var userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      return Future.value(true);
    } catch (_) {
      return Future.value(false);
    }
  }
}
