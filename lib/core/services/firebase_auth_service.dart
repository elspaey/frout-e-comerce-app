import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:frout_ecomerce_app/core/errors/exceptions.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthService {
  //function to create Email and password
  Future<User> createUserEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("Exception in fireBaseAuthService.creatUserEmailAndPassword:${e.toString()}and code is ${e.code}");

      if (e.code == 'weak-password') {
        throw CustomException(exceptionMessage: "weak password");
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(exceptionMessage: "email-already-in-use");
      } else {
        throw CustomException(exceptionMessage: " Error is ${e.code}");
      }
    } catch (e) {
      throw CustomException(exceptionMessage: "there was an error , try later");
    }
  }

  ///////////////////////////////////////////////////////////////
  //function to logIn Email and password
  Future<User> logInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("Exception in fireBaseAuthService.signInWithEmailAndPassword:${e.toString()}and code is ${e.code}");

      if (e.code == 'user-not-found') {
        throw CustomException(
            exceptionMessage: 'No user found for that email.' "weak password");
      } else if (e.code == 'wrong-password') {
        throw CustomException(
            exceptionMessage: 'Wrong password provided for that user.');
      } else {
        throw CustomException(exceptionMessage: " Error is ${e.code}");
      }
    } catch (e) {
      throw CustomException(exceptionMessage: "there was an error , try later");
    }
  }
  ///////////////////////////////////
  //function to logIn with google

  Future<User> logInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
  }
}
