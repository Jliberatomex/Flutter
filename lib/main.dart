import 'package:flutter/material.dart';
import 'package:hello_flutter/menu.dart';
import 'menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar:AppBar(title: Text("CyberNys"),),
        drawer: MenuLateral(),
        body: Center(
        
          child: Column(
            mainAxisAlignment:  MainAxisAlignment.center  ,
              children: <Widget>[
                Image.asset("assets/img/buscar.png", width: 130, height: 130, ),
                Text("CyberNys",style: TextStyle(color: Colors.black, fontSize: 24)),
                RaisedButton(
                  child: Text("REALIZAR PRUEBA"),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(15),
                   topRight: Radius.circular(15),
                   bottomLeft: Radius.circular(15),
                   bottomRight: Radius.circular(15)
                 
                 )),
                  onPressed: (){
                   Navigator.pushNamed(context, "/menu");
                 }            
                )
              ]   
          )
          )
          ),
          initialRoute: "/",
          routes:{
            '/menu': (context) => PaginaMenu(), 
          } 
      );
      
      
      //PaginaInicio(),
      //initialRoute: "/",
      //routes: {
      //  '/menu': (context) => PaginaMenu(),
      //},
    
  }
}

class MenuLateral extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Drawer(
      child:ListView(
        children: <Widget>[
          /*new UserAccountsDrawerHeader(
            accountName: Text("CyberNysUser"),
             accountEmail: Text("lolijo12@gmail.com")
            ) */

          Ink(
            color: Colors.blue,
            child:new ListTile(
            title:Text("Escanear Dispositivo",style:  TextStyle(color:Colors.white, fontSize:23 ),),
          ),
          ),
          
          Ink(
            color: Colors.blue,
            child:new ListTile(
            title:Text("Wi-fi",style:  TextStyle(color:Colors.white, fontSize:23 ),),
          ) ,
          )
        ],
      
      ),
    
    );
    
  }
}
/*

class PaginaInicio extends StatefulWidget{
  @override
  _PaginaInicio createState() => new _PaginaInicio();

}

class _PaginaInicio extends State<PaginaInicio>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(title: Text("CyberNys")),
      backgroundColor: Colors.white,
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: <Widget>[
            Image.asset("assets/img/buscar.png", width: 130, height: 130, ),
            Text("CyberNys",style: TextStyle(color: Colors.black, fontSize: 24)),
            RaisedButton(
              child: Text("REALIZAR PRUEBA"),
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(15),
                   topRight: Radius.circular(15),
                   bottomLeft: Radius.circular(15),
                   bottomRight: Radius.circular(15)
                 )),
                 onPressed: (){
                   Navigator.pushNamed(context, "/menu");

                 }
            )
            ],
            ),
            )
    );
  }
} */

