import 'package:flutter/material.dart';

import '../widget/keyboard.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Color> colorList = [Colors.red, 
  Colors.orange,
  Colors.yellow,
  Colors.deepPurple,
  Colors.blue,
  Colors.blueGrey,
  Colors.purple
  ];

  List<String> soundList = [
  'marimba1.mp3',
  'marimba2.mp3',
  'marimba3.mp3',
  'marimba4.mp3',
  'marimba5.mp3',
  'marimba6.mp3',
  'marimba7.mp3',
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/background.jpg'),
          fit: BoxFit.cover
          )
        ),
        child: Padding(
          padding: EdgeInsets.only(top: screenHeight*0.02),
          child: Column(
            children: 
                List<Widget>.generate(
                colorList.length, 
                (int index) => KeyboardWidget(
                  color: colorList[index],
                  sound: soundList[index],
                  ),
                  ),
          ),
        ),
      ),
    );
  }
}