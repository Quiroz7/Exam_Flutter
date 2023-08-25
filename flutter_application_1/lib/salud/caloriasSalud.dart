import 'package:flutter/material.dart';
import 'package:flutter_application_1/salud/caloriasClases.dart';

class Calorias extends StatefulWidget {
  const Calorias({super.key});

  @override
  State<Calorias> createState() => _CaloriasState();
}

class _CaloriasState extends State<Calorias> {
  final generoController = TextEditingController();
  final desayunoController = TextEditingController();
  final almuerzoController = TextEditingController();
  final cenaController = TextEditingController();

  final resultadosController = TextEditingController();
  double resultado = 0;
  String mensaje = '';

   void operacion()
    {
      setState(() {
        double caloriasDesayuno = double.parse(desayunoController.text);
        double caloriasAlmuerzo = double.parse(almuerzoController.text);
        double caloriasCena = double.parse(cenaController.text);
        String genero = (generoController.text);

      double total = caloriasDesayuno + caloriasAlmuerzo + caloriasCena;

      if(genero == 'hombre' && total < 1600){
        mensaje = 'Déficit Calórico';
      } else if(genero == 'hombre' && total >= 1600 && total <= 2500){
        mensaje = 'Consumo Normal';
      } else if(genero == 'hombre' && total > 2500){
        mensaje = 'Consumo excesivo de calorías';
      } 

      if(genero == 'mujer' && total < 1600){
        mensaje = 'Déficit Calórico';
      } else if(genero == 'mujer' && total >= 1600 && total <= 2000){
        mensaje = 'Consumo Normal';
      } else if(genero == 'mujer' && total > 2000){
        mensaje = 'Consumo excesivo de calorías';
      } 


        resultado = total ;
        resultadosController.text = 'El total consumido de calorías es $total. y está $mensaje';
      });
      
    }  



  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> llaveCalorias = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('CALORÍAS' , style: TextStyle(color: Color.fromARGB(255, 240, 244, 245) , fontSize: 25),),
      ),
       body:   SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 200),
          child: Form(
            key: llaveCalorias,
            child:  Column(children: [ 
              const Card(
              child: Icon(Icons.health_and_safety, size: 100),
              ),
              const SizedBox(height: 30,),

              CaloriasClase(hintText: 'Desayuno', labelText: 'Digite calorías', controller: desayunoController,),
              const SizedBox(height: 20,),
              CaloriasClase(hintText: 'Almuerzo', labelText: 'Digite calorías ', controller: almuerzoController,),
              const SizedBox(height: 20,),
              CaloriasClase(hintText: 'Cena', labelText: 'Digite calorías ', controller: cenaController,),
              const SizedBox(height: 20,),
              CaloriasClase(hintText: 'Género', labelText: 'Digite su sexo (hombre o mujer) ', controller: generoController,),
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
    