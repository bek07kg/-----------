import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class SongButton extends StatelessWidget {
  const SongButton({
    super.key,
    required this.color,
    required this.count,
  });

  final Color color;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => AudioPlayer().play(AssetSource("notes/note$count.wav")),
        child: Container(
          width: double.infinity,
          color: color,
        ),
      ),
    );
  }
}
