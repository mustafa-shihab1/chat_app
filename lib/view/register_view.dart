import 'package:chat_app/view/login_view.dart';
import 'package:chat_app/widget/box_text_field.dart';
import 'package:chat_app/widget/main_button.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0XFF2B475E),
      body: Center(
        child: SizedBox(
          width: screenSize.width * 0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/scholar.png',),
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
                    const BoxTextField(
                      hintText: 'Email',
                      obscureText: false,
                    ),
                    SizedBox(height: screenSize.height * 0.01),
                    const BoxTextField(
                      hintText: 'Password',
                      obscureText: true,
                    ),
                    SizedBox(height: screenSize.height * 0.03),
                     const MainButton(
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
