import 'package:firebase_auth/firebase_auth.dart';

enum SignInResponse { success, error }

class AuthService {
  final firebaseAuth = FirebaseAuth.instance;

  Future signInAnonymous() async {
    try {
      final result = await firebaseAuth.signInAnonymously();
      print(result.user!.uid);
      return result.user;
    } catch (e) {
      print("Anon error $e");
      return null;
    }
  }

  Future forgotPassword(String email) async {
    try {
      final result = await firebaseAuth.sendPasswordResetEmail(email: email);
      print("Mail kutunuzu kontrol ediniz");
    } catch (e) {}
  }
}


// String getMessageFromErrorCode() {
//     switch (this.errorCode) {
//       case "ERROR_EMAIL_ALREADY_IN_USE":
//       case "account-exists-with-different-credential":
//       case "email-already-in-use":
//         return "Email already used. Go to login page.";
//         break;
//       case "ERROR_WRONG_PASSWORD":
//       case "wrong-password":
//         return "Wrong email/password combination.";
//         break;
//       case "ERROR_USER_NOT_FOUND":
//       case "user-not-found":
//         return "No user found with this email.";
//         break;
//       case "ERROR_USER_DISABLED":
//       case "user-disabled":
//         return "User disabled.";
//         break;
//       case "ERROR_TOO_MANY_REQUESTS":
//       case "operation-not-allowed":
//         return "Too many requests to log into this account.";
//         break;
//       case "ERROR_OPERATION_NOT_ALLOWED":
//       case "operation-not-allowed":
//         return "Server error, please try again later.";
//         break;
//       case "ERROR_INVALID_EMAIL":
//       case "invalid-email":
//         return "Email address is invalid.";
//         break;
//       default:
//         return "Login failed. Please try again.";
//         break;
//     }
//   }