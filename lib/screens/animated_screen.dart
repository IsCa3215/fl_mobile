import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  final BorderRadius _borderRadius = BorderRadius.circular(15);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Cont"),
        backgroundColor: _color,
      ),
      body: Center(
        child: Container(
          width: _width,
          height: _height,
          decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _width = Random().nextInt(400) + 50;
          _height = Random().nextInt(400) + 50;
          
          _color = Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255));
          setState(() {
            
          });
        },
        backgroundColor: _color,
        child: Icon(Icons.play_circle),
        ),
    );
  }
}
