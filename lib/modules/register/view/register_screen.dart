import 'package:flutter/material.dart';
import 'package:photofiesta/shared/theme/colors.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellowBackground,
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: () => signInWithGoogle(context),
            child: const Text('Sign in with Google'),
          ),
        ),
      ),
    );
  }

  Future<void> signInWithGoogle(BuildContext context) async {
    try {
      final GoogleSignInAccount? account =
          await GoogleSignIn(/*clientId: ''*/).signIn();
      if (account != null) {
        final GoogleSignInAuthentication googleAuth =
            await account.authentication;
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        await FirebaseAuth.instance.signInWithCredential(credential);
        if (context.mounted) {
          await saveUser(context, account);
        }
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> saveUser(
      BuildContext context, GoogleSignInAccount account) async {
    /*
      if (context.mounted) {
          Navigator.of(context).pushReplacementNamed('homepage');
        Navigator.of(context).pushReplacementNamed('pseudo');
      }
    */
  }
}
