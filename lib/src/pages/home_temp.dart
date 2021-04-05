import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temporales'),
      ),
      body: ListView(
        // children: _crearItems()
         children: _crearItemsCorto()
        ),
    ));
  }

  // List<Widget> _crearItems() {
  //   List<Widget> lista = new List<Widget>();
  //   for (String opc in opciones) {
  //     final TempWidget = ListTile(
  //       title: Text(opc),
  //     );
  //     lista..add(TempWidget)..add(Divider());
  //   }

  //   return lista;
  // }

  List<Widget> _crearItemsCorto() {
    return  opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Cualquier Cosa'),
            leading: Icon(Icons.wb_sunny_rounded),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider()
        ],
      );
    }).toList();
    
  }
}
