import 'dart:async';

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

  suma() {
    return 2;
  }

  resta() {
    print("ressta");
  }

  mensaje() async {
    title = await message2();
    print("MENSAJE FUNCION");
    print(title);
    return title;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("INITTTTTTTTTTTTT");
    message2().then((value) {
      title = value;
      print(title);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    print("BUILDDDDDDD"); // message2().then((value) {
    //   print(value);
    //   title = value;
    //   // num++;
    //   setState(() {});
    // });
    // mensaje();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Futuresssss"),
        ),
        body: Center(
          child: Text(
            //PARA ACCEDER A STRING QUE ME DEVUELVE EL FUTURE MESSAGE 2... ?
            title.toString(),
            style: TextStyle(fontSize: 50),
            maxLines: 4,
          ),
        ),
      ),
    );
  }
}
