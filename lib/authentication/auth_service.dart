import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Register User
  Future<User?> registerWithEmail(String email, String password) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        print("Error: This email is already registered.");
      } else if (e.code == 'weak-password') {
        print("Error: Password must be at least 6 characters.");
      } else if (e.code == 'invalid-email') {
        print("Error: Invalid email format.");
      } else {
        print("Error: ${e.message}");
      }
      return null;
    } catch (e) {
      print("Error: $e");
      return null;
    }
  }

  // Login User
  Future<User?> loginWithEmail(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print("Error: No user found for this email.");
      } else if (e.code == 'wrong-password') {
        print("Error: Incorrect password.");
      } else if (e.code == 'invalid-email') {
        print("Error: Invalid email format.");
      } else {
        print("Error: ${e.message}");
      }
      return null;
    } catch (e) {
      print("Error: $e");
      return null;
    }
  }

  // Logout
  Future<void> signOut() async {
    await _auth.signOut();
  }

  // Get current user
  User? getCurrentUser() {
    return _auth.currentUser;
  }
}
