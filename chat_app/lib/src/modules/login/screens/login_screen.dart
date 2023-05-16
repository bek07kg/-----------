import 'package:chat_app/src/components/buttons/custom_button.dart';
import 'package:chat_app/src/components/logo/animation_logo.dart';
import 'package:chat_app/src/components/text_form_field/text_form_field.dart';
import 'package:chat_app/src/modules/login/controllers/lib/src/modules/login/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen(
    this.isLogin, {
    super.key,
  });
  final bool isLogin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: controller.formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const AnimationLogo(size: 180),
              Column(
                children: [
                  CustomTextField(
                    controller: controller.emailCtl,
                    labelText: "Email",
                    hintText: "Enter your email",
                  ),
                  const SizedBox(height: 12),
                  CustomTextField(
                    controller: controller.passwordCtl,
                    hintText: "Password",
                    labelText: "Enter your password",
                  ),
                ],
              ),
              CustomButton(
                onPressed: () async {
                  await controller.loginRegister(isLogin);
                },
                text: isLogin ? "Login" : "Register",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
