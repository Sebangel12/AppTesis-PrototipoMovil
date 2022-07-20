import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';

import '../../routes/routes.dart';
import '../Menu/menu.dart';

class InfCursoProgVis extends StatelessWidget {
  const InfCursoProgVis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF066163),
        appBar: AppBar(
          backgroundColor: const Color(0xFF383838),
          centerTitle: true,
          title: const Text('Prototipo Aplicación Movil y Web'),
        ),
        body: Container(
          alignment: Alignment.centerRight,
          child: ListView(
            children: [
              ElasticInLeft(
                duration: const Duration(seconds: 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    //-------------------Titulo pagina---------------------------
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      child: TextButton(
                        style: TextButton.styleFrom(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(right: 50, left: 50),
                            primary: (const Color(0xFFCDBE78)),
                            textStyle: const TextStyle(fontSize: 25),
                            backgroundColor: const Color(0xFF383838)),
                        onPressed: () {},
                        child: const Text("Información Programación Visual"),
                      ),
                    ),
                    //-----------------------------------------------------------
                    const SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    //-------------------------------------------------------------
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(left: 5),
                      child: TextButton(
                          style: TextButton.styleFrom(
                              alignment: Alignment.center,
                              padding:
                                  const EdgeInsets.only(right: 50, left: 50),
                              primary: (const Color(0xFFCDBE78)),
                              textStyle: const TextStyle(fontSize: 25),
                              backgroundColor: const Color(0xFF383838)),
                          onPressed: () {},
                          child: const Text("Aplicaciones a usar")),
                    ),

                    Card(
                        color: const Color(0xFFCDBE78),
                        child: SizedBox(
                          width: 380,
                          height: 40,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                " - Visual Studio",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black),
                              ),
                            ],
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    //-------------------------------------------------------------
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(left: 5),
                      child: TextButton(
                          style: TextButton.styleFrom(
                              alignment: Alignment.center,
                              padding:
                                  const EdgeInsets.only(right: 50, left: 50),
                              primary: (const Color(0xFFCDBE78)),
                              textStyle: const TextStyle(fontSize: 25),
                              backgroundColor: const Color(0xFF383838)),
                          onPressed: () {},
                          child: const Text("Materiales requeridos")),
                    ),

                    Card(
                        color: const Color(0xFFCDBE78),
                        child: SizedBox(
                          width: 380,
                          height: 260,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                " - Computadora: Portatil o de escritorio",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black),
                              ),
                              Text(
                                " - Procesador: Intel core 3,5 de 10ma generación",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black),
                              ),
                              Text(
                                " - Memoria RAM: 6 GB",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black),
                              ),
                              Text(
                                " - Capacidad de memoria: 500 GB de almacenamiento SSD o HDD",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black),
                              ),
                              Text(
                                " - Cuaderno o libreta",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black),
                              ),
                            ],
                          ),
                        )),
                    //-------------------------------------------------------------
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(left: 5),
                      child: TextButton(
                          style: TextButton.styleFrom(
                              alignment: Alignment.center,
                              padding:
                                  const EdgeInsets.only(right: 50, left: 50),
                              primary: (const Color(0xFFCDBE78)),
                              textStyle: const TextStyle(fontSize: 25),
                              backgroundColor: const Color(0xFF383838)),
                          onPressed: () {},
                          child: const Text("Descripción de la materia")),
                    ),

                    const Card(
                      color: Color(0xFFCDBE78),
                      child: SizedBox(
                        width: 380,
                        height: 290,
                        child: (Text(
                          "Comprendera la importancia de una interfaz de usuario en el desarrollo de un programa, asi como su diseño de colores, tamaño de los campos,"
                          " tipos de letras, en sí todas las características que hagan al usuario final una agradable experiencia al momento de usar nuestro programa."
                          "  ",
                          style: TextStyle(fontSize: 25),
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //-------------------------------------------------------------
                    Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              //height: 20,
                              width: 15,
                            ),
                            CupertinoButton(
                              color: (const Color(0xFFCDBE78)),
                              padding:
                                  const EdgeInsets.only(right: 15, left: 15),
                              onPressed: () {
                                router.pushNamed(Routes.ACTBASEDATOS);
                              },
                              child: const Text(
                                'Primer Parcial',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            const SizedBox(
                              //height: 50,
                              width: 13,
                            ),
                            CupertinoButton(
                              color: (const Color(0xFFCDBE78)),
                              padding:
                                  const EdgeInsets.only(right: 15, left: 15),
                              onPressed: () {
                                router.pushNamed(Routes.ACTBASEDATOS);
                              },
                              child: const Text(
                                'Segundo Parcial',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            const SizedBox(
                              //height: 20,
                              width: 13,
                            ),
                            CupertinoButton(
                              color: (const Color(0xFFCDBE78)),
                              padding:
                                  const EdgeInsets.only(right: 15, left: 15),
                              onPressed: () {
                                router.pushNamed(Routes.ACTBASEDATOS);
                              },
                              child: const Text(
                                'Tercer Parcial',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xFFcdbe78),
            child: const Icon(Icons.keyboard_return),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => const MenuDocente()),
              );
            }));
  }
}
