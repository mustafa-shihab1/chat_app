import 'package:chat_app/core/app_shared_preferences.dart';
import 'package:chat_app/routes/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/dependency_injection.dart';

class AuthController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _appSharedPreferences = instance<AppSharedPreferences>();

  User? get currentUser => FirebaseAuth.instance.currentUser;

  createUserWithEmailAndPassword(auth) async {
    try {
      auth = FirebaseAuth.instance;
      await auth.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      Get.offAllNamed(Routes.loginView);
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        'Error',
        e.message!,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  loginWithEmailAndPassword(auth) async {
    try {
      auth = FirebaseAuth.instance;
      await auth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      await _appSharedPreferences.setLoggedIn();

      Get.offAllNamed(Routes.chatView);
      Get.snackbar(
        'Thanks',
        'Successfully logged in',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );

      Get.offAllNamed(Routes.chatView);
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        'Error',
        e.message!,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }
}
