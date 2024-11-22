import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

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
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CustomWidgetScreen(
                    title: 'Imagen 1',
                    imageUrl: 'https://images.unsplash.com/photo-1545893835-abaa50cbe628?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8fA%3D%3D',
                    description: 'Esta es una hermosa imagen de paisaje natural y tal',
                  ),
                ),
              );
            },
            child: const CustomCardTipo2(
              imageUrl: 'https://images.unsplash.com/photo-1545893835-abaa50cbe628?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8fA%3D%3D',
            ),
          ),
          const SizedBox(height: 10),
          
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CustomWidgetScreen(
                    title: 'Imagen 2',
                    imageUrl: 'https://i.etsystatic.com/43797977/r/il/1e3818/5017534703/il_fullxfull.5017534703_biv6.jpg',
                    description: 'Y esta pues colores supongo blostes.',
                  ),
                ),
              );
            },
            child: const CustomCardTipo2(
              imageUrl: 'https://i.etsystatic.com/43797977/r/il/1e3818/5017534703/il_fullxfull.5017534703_biv6.jpg',
            ),
          ),
          const SizedBox(height: 10),
          
          
        ],
      ),
    );
  }
}