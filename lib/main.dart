import 'package:flutter/material.dart';

void main() => runApp(MiFotoApp());

class MiFotoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi ejemplo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PaginaInicio(),
    ); //fin de material app
  } //fin de widget
} //fin de MiotoApp

class PaginaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregando Bordes App Castillo'),
        backgroundColor: Colors.blue[300],
      ), //fin de appbar
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.yellow[100],
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.green[100],
                    width: 5,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Farid Castillo',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ), //fin de container nombre
              SizedBox(height:50 ),
              Container(
                height: 100,
                width: 100,
                child: Icon(
                  
                  size: 100,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.green[100],
                      width: 5.0,
                    ),
                    bottom: BorderSide(
                      color: Colors.green[100],
                      width: 5.0,
                    ),
                  ),
                ),
              ),//fin de contenedor foto
              SizedBox(height:50 ),
              Container(
                height: 100,
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green[100],
                        width: 5.0,
                      ),
                    ),
                    //! Change the Focused Border
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green[100],
                        width: 5.0,
                      ),
                    ),
                  ),
                ),
              ),//fin de contenedor 
            ], //fin de niños
          ),
        ), //fin de child center
      ), //fin de SingleChildScrollView
    ); //fin de scaffold1
  } //Fin de build widget
} //fin de Pagina Inicio
