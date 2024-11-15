import 'package:fl_components/main.dart';
import 'package:flutter/material.dart';

class CustomCardTipo1 extends StatelessWidget {
  const CustomCardTipo1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.add_home_work, 
              color: Colors.white,
            ),
            title: Text("Tarjeta"),
            subtitle: Text("Eu veniam dolore eu esse do tempor irure eu sunt. Sit cillum non id consequat consequat aliqua nulla eiusmod. Aliquip Lorem ea dolor consequat veniam quis ea excepteur exercitation magna nisi."),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: TextButton(
                onPressed: () {},
                child: const Text("Cancelar")
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, bottom: 10),
              child: TextButton(
                onPressed: () {},
                child: const Text("Aceptar")
              ),
            ),
          ])
        ],
      ),
    );
  }
}