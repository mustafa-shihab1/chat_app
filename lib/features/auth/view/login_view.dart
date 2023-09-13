import 'package:chat_app/features/auth/widget/box_text_field.dart';
import 'package:chat_app/features/auth/widget/main_button.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

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
                  'LOGIN',
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
                      onTap: () {},
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
                            Navigator.pushReplacementNamed(
                                context, '/register');
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
  }
}
