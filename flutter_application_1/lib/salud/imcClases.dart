    
import 'package:flutter/material.dart';

class IMCClase extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final TextEditingController? controller;
  
  const IMCClase({
    super.key,
    this.hintText,
    this.labelText,
    this.controller
    });


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      // initialValue: '',
      controller: controller,
      textCapitalization: TextCapitalization.words,

      validator: (value){
        if (value == null) return 'Este campo es requerido';
          return value.isEmpty ? 'Mínimo 1 número' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,

      decoration:  InputDecoration(
      hintText: hintText,
      labelText: labelText,
       // helperText: 'solo letra',
      counterText: '8 carácteres',
      prefixIcon: const Icon( Icons.verified_outlined),
      suffixIcon: const Icon( Icons.group_outlined),
      icon: const Icon( Icons.assignment_ind_outlined),
    ),
    onChanged: (value) {
      print('value: $value');
      },
    );
  }
}   
//