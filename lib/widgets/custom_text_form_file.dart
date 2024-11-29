import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

    final String? hintText;
    final String? labelText;
    final String? helperText;
    final IconData? icono;
    final TextInputType? keyboardAction;
    final String? formProperty;
    final Map<String, String> formValues;

  const CustomTextFormField({
    super.key, this.hintText, this.labelText, this.helperText, this.icono, this.keyboardAction, this.formProperty, required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      //initialValue: 'Cabalo',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardAction,
      onChanged: (value) =>
        formValues[formProperty] = value,
      validator: (value) {
        if (value!.length < 3) {
          return 'Minimo 3 caracteres';
        }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        suffixIcon: Icon(icono),
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        
        border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}