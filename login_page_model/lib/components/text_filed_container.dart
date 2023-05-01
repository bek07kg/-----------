import 'package:flutter/material.dart';

class TextFiledContainer extends StatelessWidget {
  final Widget child;
  const TextFiledContainer({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
