import 'package:chat_app/features/auth/controller/auth_controller.dart';
import 'package:chat_app/features/splash/controller/splash_controller.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

final instance = GetIt.instance;

initSplash() {
  Get.put<SplashController>(SplashController());
}

disposeSplash(){
  Get.delete<SplashController>();
}

initAuthModule() {
  disposeSplash();
  Get.put<AuthController>(AuthController());
}

disposeAuthModule() {
  Get.delete<AuthController>();
}
