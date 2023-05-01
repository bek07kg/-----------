import 'package:flutter/material.dart';

class RountedButton extends StatelessWidget {
  const RountedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {},
      child: Container(
        width: 400,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(29),
        ),
        child: Center(
          child: Text(
            "LOGIN",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
