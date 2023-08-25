import 'package:flutter/material.dart';

class Dietas extends StatefulWidget {
  const Dietas({super.key});

  @override
  State<Dietas> createState() => _DietasState();
}

class _DietasState extends State<Dietas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DIETAS' , style: TextStyle(color: Color.fromARGB(255, 240, 244, 245), fontSize: 25),),
      ),
      body:  Column(
        children: [
          Card(
            child: Image.network('https://th.bing.com/th/id/OIP.dp6IWL5xZoNbLfpPK234wAAAAA?pid=ImgDet&rs=1' , width: 150,),
          ),
          const Card(
            child: ListTile(leading: Icon(Icons.air),
            title:  Text('DESAYUNO'),
            subtitle: Text('Un desayuno para adelgazar debería contener una ración de proteína (huevo, jamón, pavo, hummus…), un lácteo (un vaso de leche, yogur o queso fresco), fruta y cereales (pan integral o avena integral, por ejemplo). Evita la bollería o los embutidos.'),
            
            ),          
          ),
          const SizedBox(height: 10,),
          Card(
            child: Image.network('https://th.bing.com/th/id/OIP.CABdsiVSPH5yxMgV2obydQHaE8?pid=ImgDet&rs=1' , width: 150,),
          ),
          const Card(
            child: ListTile(leading: Icon(Icons.air),
            title:  Text('ALMUERZO'),
            subtitle: Text('Filete de pollo a la plancha, 2 filetes de pechuga de pollo,1 Limón, 1 pizca de pimienta, 1 diente de ajo, 1 pizca de orégano,1 pizca de hierbas provenzales'),
            
            ),          
          ),
          const SizedBox(height: 10,),

          Card(
            child: Image.network('https://th.bing.com/th/id/OIP.pabk8Em479qWuAb-WrHOYQHaEK?pid=ImgDet&rs=1' , width: 150,),
          ),
          const Card(
            child: ListTile(leading: Icon(Icons.air),
            title:  Text('CENA'),
            subtitle: Text('Lo más importante para cenar y no engordar son; Sopas, consomés, cremas de verduras, verduras salteadas o al vapor, pescado al vapor, pollo a la plancha, tortillas, huevos revueltos…, son las opciones más acertadas para cenar ligero.'),
            
            ),          
          ),
          
        ],
      ),
    );
  }
}
    
    