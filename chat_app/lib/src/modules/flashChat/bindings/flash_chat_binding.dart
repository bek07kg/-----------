import 'package:chat_app/src/modules/flashChat/controllers/lib/src/modules/flashChat/controllers/flash_chat_controller.dart';
import 'package:get/get.dart';

class FlashChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FlashChatController>(() => FlashChatController());
  }
}
