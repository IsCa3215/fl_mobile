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
                  formProperty: 'apellidos',
                  formValues: formValues
              ),

              const SizedBox(height: 30),
              CustomTextFormField(
                  helperText: "Aloo3",
                  labelText: "alooooooo3",
                  hintText: "xd3",
                  icono: Icons.person_3_rounded,
                  formProperty: 'apellidos2',
                  formValues: formValues
                  ),
              const SizedBox(height: 30),
              CustomTextFormField(
                helperText: "email",
                labelText: "email",
                hintText: "email",
                icono: Icons.email,
                keyboardAction: TextInputType.emailAddress,
                formProperty: 'apellidos3',
                formValues: formValues
              ),
              const SizedBox(height: 30),
              DropdownButtonFormField(
                items: const [
                  DropdownMenuItem(value: 'usuario',child: Text('Usuaio'),),
                  DropdownMenuItem(value: 'editor',child: Text('Editor'),),
                  DropdownMenuItem(value: 'programador',child: Text('Programador'),),
                  DropdownMenuItem(value: 'administrador',child: Text('Adminitrador'),),
                ],
                onChanged: ((value){
                  print(value);
                  formValues['role'] = value ?? 'usuario';
                }),
              ),
              const SizedBox(height: 30),
              Checkbox(value: true, onChanged: (value){
                
              }),

              const SizedBox(height: 30),
              CustomTextFormField(
                  helperText: "Aloo5",
                  labelText: "alooooooo5",
                  hintText: "xd5",
                  icono: Icons.person_3_rounded,
                  formProperty: 'role',
                  formValues: formValues
                  ),
                  
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
