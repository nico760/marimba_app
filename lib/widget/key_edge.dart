import 'package:flutter/material.dart';

class KeyEdge extends StatelessWidget {
  const KeyEdge({super.key});

  @override
  Widget build(BuildContext context) {
    double keyHeight = (MediaQuery.of(context).size.height/7);
    return Padding(
      padding: const EdgeInsets.fromLTRB(7,0,7,0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: (keyHeight)*0.06,
            backgroundColor: Colors.black,
          ),
          CircleAvatar(
            radius: (keyHeight)*0.06,
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}