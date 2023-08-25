import 'package:flutter/material.dart';
import 'package:flutter_application_1/salud/caloriasSalud.dart';
import 'package:flutter_application_1/salud/dietasSalud.dart';
import 'package:flutter_application_1/salud/imcSalud.dart';
import 'package:flutter_application_1/salud/presionArterialSalud.dart';
import 'package:flutter_application_1/salud/rutinasEjercicioSalud.dart';
import 'package:flutter_application_1/salud/contactoSalud.dart';


class MenuSalud extends StatefulWidget {
  const MenuSalud({super.key});

  @override
  State<MenuSalud> createState() => _MenuSaludState();
}

class _MenuSaludState extends State<MenuSalud> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:const Text("Vida Saludable" , style: TextStyle(color: Color.fromARGB(255, 240, 244, 245) , fontSize: 25), ),
        ),
        body: ListView(
        children: [
          const Card(
            child: ListTile(
              title: Center(
                child: Column(
                  children: [
                    Text('BIENVENIDO',style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 7, 226, 73)),),
                    Text('¿Qué deseas hacer?' , style: TextStyle(fontSize: 20, color: Color.fromARGB(178, 7, 226, 73)),),
                    Card(
                      child: Icon(Icons.health_and_safety, size: 100,),
                    )
                  ],
                ),
              ),
            ),
          ),
          ListTile(
            title: const Text('Ir a Dietas'),
            leading: const Icon(Icons.arrow_right, color: Color.fromARGB(255, 213, 228, 9)),
            onTap: () {
              Navigator.push(context,MaterialPageRoute(
                  builder: (context) => const Dietas() ));
              },
            ),
            const SizedBox(height: 20,),
            ListTile(
              title: const Text('Ir a IMC'),
              leading: const Icon(Icons.arrow_right, color: Color.fromARGB(255, 213, 228, 9)),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(
                  builder: (context) => const IMC() ));
            },
          ),
          const SizedBox(height: 20,),
            ListTile(
              title: const Text('Ir a Calorías'),
              leading: const Icon(Icons.arrow_right, color: Color.fromARGB(255, 213, 228, 9)),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(
                  builder: (context) => const Calorias() ));
            },
          ),
          const SizedBox(height: 20,),
            ListTile(
              title: const Text('Ir a Rutinas de Ejercicio'),
              leading: const Icon(Icons.arrow_right, color: Color.fromARGB(255, 213, 228, 9)),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(
                  builder: (context) => RutinasEjercicio() ));
            },
          ),
          const SizedBox(height: 20,),
            ListTile(
              title: const Text('Ir a Presión Arterial'),
              leading: const Icon(Icons.arrow_right, color: Color.fromARGB(255, 213, 228, 9)),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(
                  builder: (context) => const PresionArterial() ));
            },
          ),
          const SizedBox(height: 20,),
            ListTile(
              title: const Text('Ir a Contacto'),
              leading: const Icon(Icons.arrow_right, color: Color.fromARGB(255, 213, 228, 9)),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(
                  builder: (context) => const Contacto() ));
            },
          ),
        ],
      ),
    );
  }
}
    