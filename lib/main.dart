import 'package:chat_app/features/auth/view/login_view.dart';
import 'package:chat_app/features/auth/view/register_view.dart';
import 'package:chat_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
// only to keep saving my streak :)
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        '/login': (context) => const LoginView(),
        '/register': (context) => const RegisterView(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
    );
  }
}
