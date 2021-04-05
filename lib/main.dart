import 'package:flutter/material.dart';

import 'package:componentes/src/routes/routes.dart';

import 'package:componentes/src/pages/alert_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      
    
      // home: HomePage(),
      initialRoute: '/',
      routes: getAplicationRoutes(),
      onGenerateRoute: (settings) {
        print('Ruta llamada ${settings.name}');
        return MaterialPageRoute(builder: ( BuildContext context)=>AlertPage() );
      },
    );
  }
}
