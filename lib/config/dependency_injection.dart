import 'package:chat_app/features/auth/controller/auth_controller.dart';
import 'package:chat_app/features/splash/controller/splash_controller.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/app_shared_preferences.dart';
import '../features/chat/controller/chat_controller.dart';

final instance = GetIt.instance;
Future<void> initModule() async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();

  instance.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

  instance.registerLazySingleton<AppSharedPreferences>(
    () => AppSharedPreferences(instance()),
  );
}

initSplash() {
  Get.put<SplashController>(SplashController());
}

disposeSplash() {
  Get.delete<SplashController>();
}

initAuthModule() {
  disposeSplash();
  Get.put<AuthController>(AuthController());
}

disposeAuthModule() {
  Get.delete<AuthController>();
}

initChatModule() {
  Get.put<ChatController>(ChatController());
}

disposeChatModule() {
  Get.delete<ChatController>();
}
