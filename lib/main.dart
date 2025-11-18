import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'config/dependency_injection.dart';
import 'core/app_shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await initModule();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final _appSharedPreferences = instance<AppSharedPreferences>();

    return GetMaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarIconBrightness: Brightness.light,
            ),
          ),
        ),
        onGenerateRoute: RouteGenerator.getRoute,
        debugShowCheckedModeBanner: false,
        initialRoute: _appSharedPreferences.isLoggedIn()
            ? Routes.chatView
            : Routes.loginView);
  }
}
