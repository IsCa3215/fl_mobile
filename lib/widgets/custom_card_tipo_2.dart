import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {
  const CustomCardTipo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7)
      ),
      child: Column(
        children: [
          const FadeInImage(image: NetworkImage("https://s1.1zoom.me/big3/842/425190-Kycb.jpg"), 
          placeholder: AssetImage('./assets/ZKZg.gif'),
          //height: 200,
          //width: double.infinity,
          fit: BoxFit.cover,
          ),
          Container(
            alignment: AlignmentDirectional.center,
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: 
            const Text("Y tal")
            ),
        ],
      ),
    );
  }
}