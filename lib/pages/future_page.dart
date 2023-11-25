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

  Future<String> message2() async {
    return "Hola soy un future";
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
  Widget build(BuildContext context) {
    message2().then((value) {
      print(value);
      title = value;
      // num++;
      setState(() {});
    });
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
