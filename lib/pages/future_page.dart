import 'dart:async';

import 'package:example/pages/main_page.dart';
import 'package:flutter/material.dart';

class FuturePage extends StatefulWidget {
  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String title = "Hola a todos soy title";
  int num = 0;

  String message() {
    return "Saludando por una función";
  }

  //UN FUTURE VA A REPRESENTAR UN VALOR QUE VA A ESTAR DISPONIBLE EN UN FUTURO, NO EN EL INSTANTE
  Future<String> message2() async {
    return Future.delayed(Duration(seconds: 4), () {
      return "Hola soy un future";
    });
  }

  //FUNCION CON RETORNO
  suma() {
    return 2;
  }

  //FUNCION SIN RETORNO
  resta() {
    print("ressta");
  }

  // FUNCION ASINCRONA
  mensaje() async {
    title = await message2();
    print("MENSAJE FUNCION");
    print(title);
    return title;
  }

  Future getInfo() async {
    title = await message2();
    setState(() {});
  }

  //INIT STATE NO PUEDE SER ASINCRONO (ASYNC)
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("INITTTTTTTTTTTTT");
    //FORMA 1 USANDO .THEN PARA OBTENER EL VALOR DEL FUTURE
    // message2().then((value) {
    //   title = value;
    //   print(title);
    //   setState(() {});
    // });

    // FORMA 2 PARA OBTENER EL VALOR DEL FUTURE
    getInfo();
  }

  @override
  Widget build(BuildContext context) {
    print("BUILDDDDDDD");

    //NO FUNCIONA ESTO
    // message2().then((value) {
    //   print(value);
    //   title = value;
    //   // num++;
    //   setState(() {});
    // });
    // mensaje();
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text("Futuresssss"),
        // ),
        body: Center(
          child: Column(
            children: [
              Text(
                //PARA ACCEDER A STRING QUE ME DEVUELVE EL FUTURE MESSAGE 2... ?
                "FUTURES",
                style: TextStyle(fontSize: 50),
                maxLines: 4,
              ),
              Text(
                //PARA ACCEDER A STRING QUE ME DEVUELVE EL FUTURE MESSAGE 2... ?
                title,
                style: TextStyle(fontSize: 50),
                maxLines: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
