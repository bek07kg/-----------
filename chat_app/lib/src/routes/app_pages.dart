import 'package:chat_app/src/modules/flashChat/bindings/flash_chat_binding.dart';
import 'package:chat_app/src/modules/flashChat/screens/flash_chat_screen.dart';
import 'package:chat_app/src/modules/home/bindings/lib/src/modules/home/bindings/home_binding.dart';
import 'package:chat_app/src/modules/home/screens/home_screen.dart';
import 'package:chat_app/src/modules/login/bindings/lib/src/modules/login/bindings/login_binding.dart';
import 'package:chat_app/src/modules/login/screens/login_screen.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const FLASH_CHAT = Routes.FLASH_CHAT;
  static const HOME = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginScreen(Get.arguments as bool),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.FLASH_CHAT,
      page: () => const FlashChatScreen(),
      binding: FlashChatBinding(),
    ),
  ];
}
