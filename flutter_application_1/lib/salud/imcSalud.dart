import 'package:flutter/material.dart';
import 'package:flutter_application_1/salud/imcClases.dart';

class IMC extends StatefulWidget {
  const IMC({super.key});

  @override
  State<IMC> createState() => _IMCState();
}

class _IMCState extends State<IMC> {

  
  final alturaController = TextEditingController();
  final pesoController = TextEditingController();
  final resultadosController = TextEditingController();
  double resultado = 0;
  String mensaje = '';

  void operacion()
    {
      setState(() {
        double peso = double.parse(pesoController.text);
        double altura = double.parse(alturaController.text) / 100;
        double imc = peso / ( altura * altura);

      if(imc < 18.5){
        mensaje = 'Peso inferior a lo normal (${imc.toStringAsPrecision(3)})';
      } else if(imc >= 18.5 && imc < 25.0){
        mensaje = 'Normal (${imc.toStringAsPrecision(3)})';
      } else if(imc >= 25.0 && imc < 29.9){
        mensaje = 'Pesos superior al normal (${imc.toStringAsPrecision(3)})';
      } else if(imc >= 29.9){
        mensaje = 'Obesidad (${imc.toStringAsPrecision(3)})';
      } 
        resultado = imc ;
        resultadosController.text = 'Su índice de Masa Corporal es de ${imc.toStringAsPrecision(3)} y está $mensaje';
      });
      
    }  

  @override
  Widget build(BuildContext context) {
        final GlobalKey<FormState> llaveIMC = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('IMC' , style: TextStyle(color: Color.fromARGB(255, 240, 244, 245) , fontSize: 25,),),
      ),
       body:   SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 200),
          child: Form(
            key: llaveIMC,
            child:  Column(children: [ 
              const Card(
              child: Icon(Icons.health_and_safety, size: 100),
              ),
              const SizedBox(height: 30,),

              IMCClase(hintText: 'Peso', labelText: 'Digite en KG su peso', controller: pesoController,),
              const SizedBox(height: 20,),
              IMCClase(hintText: 'Altura', labelText: 'Digite en centímetros su altura ', controller: alturaController,),
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
                enabled: false, style: const TextStyle(color: Color.fromARGB(255, 24, 151, 8), fontSize: 20),
              )
            ],),
          )
        )
      )
    );
  }
}
    