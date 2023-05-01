import 'package:flutter/material.dart';
import 'package:login_page_model/components/text_filed_container.dart';

class RountedInputFiled extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RountedInputFiled({
    Key? key,
    required this.hintText,
    this.icon = Icons.email,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFiledContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.black,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
