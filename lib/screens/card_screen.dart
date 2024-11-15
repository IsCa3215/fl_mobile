import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView(
        
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        children: const [
          CustomCardTipo1(),
          CustomCardTipo2()
        ],
      )
    );
  }
}

