import 'package:flutter/material.dart';
import 'package:flutter_application_1/salud/indexMenu.dart';

import 'package:flutter_application_1/theme/appTheme.dart';


void main(){
  runApp(const MainApp() );
}

class MainApp extends StatelessWidget{
  const MainApp ({super.key});

 @override
 Widget build(BuildContext context){ 
  return MaterialApp(

    debugShowCheckedModeBanner: false,
    home: const MenuSalud(),
    theme: AppTheme.lightTheme,


  );
 }
}