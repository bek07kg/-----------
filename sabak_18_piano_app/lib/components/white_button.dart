import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class WhiteButton extends StatelessWidget {
  const WhiteButton({
    super.key,
    required this.count,
  });

  final int count;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: SizedBox(
        width: 80,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.resolveWith((states) => Colors.white),
            overlayColor: MaterialStateProperty.resolveWith(
              (states) {
                return states.contains(MaterialState.pressed)
                    ? const Color.fromARGB(255, 189, 186, 186)
                    : null;
              },
            ),
          ),
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
    );
  }
}
