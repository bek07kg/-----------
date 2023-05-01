import 'package:flutter/material.dart';

class AccountCheck extends StatelessWidget {
  const AccountCheck({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an Account ?",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        SizedBox(width: 10),
        InkWell(
          onTap: () {},
          child: Text(
            "Sign Up",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
