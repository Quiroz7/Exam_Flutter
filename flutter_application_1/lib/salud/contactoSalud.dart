import 'package:flutter/material.dart';
import 'package:flutter_application_1/salud/contactoClases.dart';

class Contacto extends StatefulWidget {
  const Contacto({super.key});

  @override
  State<Contacto> createState() => _ContactoState();
}

class _ContactoState extends State<Contacto> {
  final correoController = TextEditingController();
  final nombreController = TextEditingController();
  final celularController = TextEditingController();

  List<Map<String, String>> contactoData = [];

  void agregarContacto() {
    contactoData.add({
      'Nombre ': nombreController.text,
      'Correo': correoController.text,
      'Celular': celularController.text,
    });

    nombreController.clear();
    correoController.clear();
    celularController.clear();

    imprimircontactoData();
    setState(() { });
  }

  void imprimircontactoData(){
    for(var contacto in contactoData){
      print(contacto);
      print('----------');
    }
  }
  @override
  Widget build(BuildContext context) {
        final GlobalKey<FormState> llaveContacto = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('CONTACTO' , style: TextStyle(color: Color.fromARGB(255, 240, 244, 245) , fontSize: 25),),
      ),
       body:   SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 200),
          child: Form(
            key: llaveContacto,
            child:  Column(children: [ 
              const Card(
              child: Icon(Icons.health_and_safety, size: 100),
              ),
              const SizedBox(height: 30,),

              ContactoClase(hintText: 'Correo', labelText: 'Digite Correo', controller: correoController,),
              const SizedBox(height: 20,),
              ContactoClase(hintText: 'Nombre', labelText: 'Digite Nombre ', controller: nombreController,),
              const SizedBox(height: 20,),
              ContactoClase(hintText: 'Celular', labelText: 'Digite Celular ', controller: celularController,),
              const SizedBox(height: 20,),
              
              ElevatedButton(
              onPressed: agregarContacto,
              style: ElevatedButton.styleFrom(
                backgroundColor:  const Color.fromARGB(169, 29, 163, 33),),
                child:  const Text('Guardar')
              ),
              const SizedBox(height: 30,),

              
            ],),
          )
        )
      )
    );
  }
}
    
    