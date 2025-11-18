import 'package:chat_app/core/validator.dart';
import 'package:chat_app/features/auth/controller/auth_controller.dart';
import 'package:chat_app/features/auth/widget/box_text_field.dart';
import 'package:chat_app/features/auth/widget/main_button.dart';
import 'package:chat_app/routes/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  final FieldValidator _fieldValidator = FieldValidator();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return GetBuilder<AuthController>(builder: (controller) {
      return Scaffold(
        backgroundColor: const Color(0XFF2B475E),
        body: Center(
          child: SizedBox(
            width: screenSize.width * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/scholar.png',
                ),
                const Text(
                  'Scholar Chat',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                SizedBox(height: screenSize.height * 0.06),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                    ),
                  ),
                ),
                SizedBox(height: screenSize.height * 0.03),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      BoxTextField(
                        hintText: 'Email',
                        obscureText: false,
                        onChanged: (value) {
                          controller.emailController.text = value;
                        },
                        validator: (value) {
                          return _fieldValidator.validateEmail(value);
                        },
                      ),
                      SizedBox(height: screenSize.height * 0.01),
                      BoxTextField(
                        hintText: 'Password',
                        obscureText: true,
                        onChanged: (value) {
                          controller.passwordController.text = value;
                        },
                        validator: (value) {
                          return _fieldValidator.validatePassword(value);
                        },
                      ),
                      SizedBox(height: screenSize.height * 0.03),
                      MainButton(
                        onTap: () async {
                          if (_formKey.currentState!.validate()) {
                            var auth = FirebaseAuth.instance;
                            await controller.loginWithEmailAndPassword(auth);
                          }
                        },
                        title: 'Login',
                      ),
                      SizedBox(height: screenSize.height * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Don\'t have an account?',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Get.offAllNamed(Routes.registerView);
                            },
                            child: const Text(
                              'Register',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
