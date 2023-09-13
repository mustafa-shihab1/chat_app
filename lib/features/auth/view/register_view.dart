import 'package:chat_app/features/auth/widget/box_text_field.dart';
import 'package:chat_app/features/auth/widget/main_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? email;
    String? password;
    Size screenSize = MediaQuery.of(context).size;
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
                  'REGISTER',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                  ),
                ),
              ),
              SizedBox(height: screenSize.height * 0.03),
              Form(
                child: Column(
                  children: [
                    BoxTextField(
                      hintText: 'Email',
                      obscureText: false,
                      onChanged: (value) {
                          email = value;
                      },
                    ),
                    SizedBox(height: screenSize.height * 0.01),
                    BoxTextField(
                      hintText: 'Password',
                      obscureText: true,
                      onChanged: (value) {
                          password = value;
                      },
                    ),
                    SizedBox(height: screenSize.height * 0.03),
                    MainButton(
                      onTap: () async {
                        print(email);
                        print(password);
                        var auth = FirebaseAuth.instance;
                        UserCredential userCredential =
                            await auth.createUserWithEmailAndPassword(
                          email: email!,
                          password: password!,
                        );
                        print(userCredential.user!.email);
                      },
                      title: 'Register',
                    ),
                    SizedBox(height: screenSize.height * 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already have an account?',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/login');
                          },
                          child: const Text(
                            'Login',
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
  }
}
