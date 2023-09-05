import 'package:flutter/material.dart';
import 'package:marimba_music_app/constants/keyboard_shadow.dart';
import 'package:marimba_music_app/widget/key_edge.dart';
import 'package:audioplayers/audioplayers.dart';


class KeyboardWidget extends StatefulWidget {
  const KeyboardWidget({super.key,
  required this.color,
  required this.sound,
  });

  final Color color;
  final String sound;

  @override
  State<KeyboardWidget> createState() => _KeyboardWidgetState();
}

class _KeyboardWidgetState extends State<KeyboardWidget> {
  bool _isPressed = false;
  final AudioPlayer audioPlayer = AudioPlayer();

  void playSong(String audioUrl) async {
    await audioPlayer.stop();
    await audioPlayer.resume();
  }

  @override
  void initState() {
    audioPlayer.setSourceAsset(widget.sound);
    super.initState();
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double keyHeight = (MediaQuery.of(context).size.height/7);
    double keyWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(1.5),
      child: SizedBox(
        child: GestureDetector(
          onTapDown: (_){
            setState(() {
              playSong(widget.sound);
              _isPressed = true;
            });
          },
          onTapUp: (_){
            setState(() {
              _isPressed = false;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            height: _isPressed ? keyHeight*0.87 : keyHeight*0.9, 
            width: _isPressed ? keyWidth*0.87 : keyWidth*0.9, 
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              color: widget.color,
              boxShadow: KeyDecorationConstants.listShadow
            ),
            child: const KeyEdge()
          ),
        ),
      ),
    );
  }
}