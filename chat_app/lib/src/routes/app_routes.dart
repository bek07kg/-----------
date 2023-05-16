part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const LOGIN = _Paths.LOGIN;
  static const FLASH_CHAT = _Paths.FLASH_CHAT;
}

abstract class _Paths {
  _Paths._();
  static const HOME = "/home";
  static const LOGIN = "/login";
  static const FLASH_CHAT = "/flash_chat";
}
