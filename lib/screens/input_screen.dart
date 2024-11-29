import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'nombre': 'Cabalo',
      'apellido': 'Sánchez',
      'email': 'sabedios@g.g',
      'password': 'tal',
      'role': 'usuario',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text("Forms: inputs"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              CustomTextFormField(
                  helperText: "Aloo",
                  labelText: "alooooooo",
                  hintText: "xd",
                  icono: Icons.person_3_rounded,
                  formProperty: 'nombre',
                  formValues: formValues,
                  ),
                  
              const SizedBox(height: 30),
              CustomTextFormField(
                  helperText: "Aloo2",
                  labelText: "alooooooo2",
                  hintText: "xd2",
                  icono: Icons.person_3_rounded,
                  formProperty: 'apelidos',
                  formValues: formValues
              ),

              const SizedBox(height: 30),
              const CustomTextFormField(
                  helperText: "Aloo3",
                  labelText: "alooooooo3",
                  hintText: "xd3",
                  icono: Icons.person_3_rounded),
              const SizedBox(height: 30),
              const CustomTextFormField(
                helperText: "email",
                labelText: "email",
                hintText: "email",
                icono: Icons.email,
                keyboardAction: TextInputType.emailAddress,
              ),
              const SizedBox(height: 30),
              const CustomTextFormField(
                  helperText: "Aloo5",
                  labelText: "alooooooo5",
                  hintText: "xd5",
                  icono: Icons.person_3_rounded),
              const SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if(!myFormKey.currentState!.validate()){
                      print('Error en el formulario');
                      
                      return;
                    }
                  },
                  child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Enviar'))))
            ],
          ),
        ),
      ),
    );
  }
}
