import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class BlackButton extends StatelessWidget {
  const BlackButton({
    super.key,
    required this.count,
    this.visible = true,
  });

  final int count;
  final bool visible;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.5),
      child: SizedBox(
        width: 63,
        height: 170,
        child: Visibility(
          visible: visible,
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                  (states) => Colors.black,
                ),
                overlayColor: MaterialStateProperty.resolveWith((states) {
                  return states.contains(MaterialState.pressed)
                      ? const Color.fromARGB(255, 71, 70, 70)
                      : null;
                })),
            onPressed: () {
              AudioPlayer().play(AssetSource("notes/note$count.wav"));
            },
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  "",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
