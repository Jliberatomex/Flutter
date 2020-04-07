import 'package:flutter/material.dart';
class PaginaMenu extends StatefulWidget{
  @override
  _PaginaMenu createState() => new _PaginaMenu();

}

class _PaginaMenu extends State<PaginaMenu>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(title: Text("Resultado de test"),),
      body: Center(child: Text("Resultado de Test"),
      ),
    );
  }
}