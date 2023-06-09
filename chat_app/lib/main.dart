import 'package:chat_app/src/app/app.dart';
import 'package:chat_app/src/service/user_manage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final isAuth = await userManage.init();
  runApp(MyApp(isAuth));
}
