import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forms: inputs"),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            CustomTextFormField(helperText: "Aloo", labelText: "alooooooo", hintText: "xd", icono: Icons.person_3_rounded),
            CustomTextFormField(helperText: "Aloo2", labelText: "alooooooo2", hintText: "xd2", icono: Icons.person_3_rounded),
            CustomTextFormField(helperText: "Aloo3", labelText: "alooooooo3", hintText: "xd3", icono: Icons.person_3_rounded),
            CustomTextFormField(helperText: "email", labelText: "email", hintText: "email", icono: Icons.email, keyboardAction: TextInputType.emailAddress,),
            CustomTextFormField(helperText: "Aloo5", labelText: "alooooooo5", hintText: "xd5", icono: Icons.person_3_rounded),

          ],
        ),
      ),
    );
  }
}
