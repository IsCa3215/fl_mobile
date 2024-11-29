import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text('Avatar'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              child: Text('IM'),
            ),
          )
        ],
      ),
      
      body: const Center(
         child: CircleAvatar(
          backgroundImage: NetworkImage("https://images.unsplash.com/photo-1670427205005-f378185fda44?ixlib=rb-4.0.3"),
          maxRadius: 100, 
         ),
         
      ),
    );
  }
}