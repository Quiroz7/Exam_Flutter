import 'package:flutter/material.dart';
import 'package:flutter_application_1/salud/presionClases.dart';

class PresionArterial extends StatefulWidget {
  const PresionArterial({super.key});

  @override
  State<PresionArterial> createState() => _PresionArterialState();
}

class _PresionArterialState extends State<PresionArterial> {
  final presionController = TextEditingController();
  
  final resultadosController = TextEditingController();
  double resultado = 0;
  String mensaje = '';

   void operacion()
    {
      setState(() {
        double presionArterial = double.parse(presionController.text);

      if( presionArterial < 120){
        mensaje = 'Normal';
      } else if( presionArterial >= 120 && presionArterial <= 129){
        mensaje = 'Presión arterial alta (sin otros factores de riesgo cardíaco)';
      } else if(presionArterial > 129 && presionArterial < 179){
        mensaje = 'Presión arterial alta (con otros factores de riesgo cardíaco, según algunos proveedores)';
      } else if(presionArterial >= 180){
        mensaje = 'Presión arterial peligrosamente alta - Busque atención médica de inmediato';
      } 

        resultado = presionArterial ;
        resultadosController.text = 'Su presión Arterial es de $resultado. y su estado es $mensaje';
      });
      
    }  
  @override
  Widget build(BuildContext context) {
        final GlobalKey<FormState> llavePresion = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('PRESIÓN ARTERIAL' , style: TextStyle(color: Color.fromARGB(255, 240, 244, 245) , fontSize: 25),),
      ),
       body:   SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 200),
          child: Form(
            key: llavePresion,
            child:  Column(children: [ 
              const Card(
              child: Icon(Icons.health_and_safety, size: 100),
              ),
              const SizedBox(height: 30,),

              PresionClase(hintText: 'Presión Arterial', labelText: 'Digite su presión arterial', controller: presionController,),
              const SizedBox(height: 20,),
              
              
              ElevatedButton(
              onPressed: operacion,
              style: ElevatedButton.styleFrom(
                backgroundColor:  const Color.fromARGB(169, 29, 163, 33),),
                child:  const Text('Calcular')
              ),
              const SizedBox(height: 30,),

              TextFormField(
                controller: resultadosController,
                enabled: false, style: const TextStyle(color: Color.fromARGB(255, 24, 151, 8), fontSize: 15),
              )
            ],),
          )
        )
      )
    );
  }
}
    
  