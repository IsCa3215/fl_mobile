import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {

  final String imageUrl;

  const CustomCardTipo2({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7)
      ),
      child: Column(
        children: [
          FadeInImage(image: NetworkImage(imageUrl), 
          placeholder: const AssetImage('./assets/ZKZg2.gif'),
          height: 200,
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