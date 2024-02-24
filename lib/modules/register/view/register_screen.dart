import 'package:flutter/material.dart';
import 'package:photofiesta/shared/theme/colors.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellowBackground,
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: () => signInWithGoogle(),
            child: const Text('Sign in with Google'),
          ),
        ),
      ),
    );
  }

  Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? account = await GoogleSignIn(
              /* needed for web
              clientId: 'firebase-projet-id'
              */
              )
          .signIn();
      if (account != null) {
        final GoogleSignInAuthentication googleAuth =
            await account.authentication;
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        await FirebaseAuth.instance.signInWithCredential(credential);
        await saveUser(account);
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> saveUser(GoogleSignInAccount account) async {
    print(account.displayName);
    print(account.email);
    print(account.photoUrl);
  }
}
