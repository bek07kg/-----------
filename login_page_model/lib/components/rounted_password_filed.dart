import 'package:flutter/material.dart';
import 'package:login_page_model/components/text_filed_container.dart';

class RountedPasswordFiled extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RountedPasswordFiled({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFiledContainer(
      child: TextField(
        onChanged: onChanged,
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: Colors.black,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: Colors.black,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
