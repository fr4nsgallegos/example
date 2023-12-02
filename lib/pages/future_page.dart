import 'dart:async';

import 'package:example/models/person_model.dart';
import 'package:example/pages/main_page.dart';
import 'package:flutter/material.dart';

class FuturePage extends StatefulWidget {
  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String title = "Hola a todos soy title";

  Future<String> getTitle() async {
    return Future.delayed(Duration(seconds: 4), () {
      return "Real - Kendrick Lamar";
    });
  }

  Future<int> getNumber() async {
    return Future.delayed(Duration(seconds: 4), () {
      return 999;
    });
  }

  Future<List<Map<String, dynamic>>> getProducts() async {
    return Future.delayed(Duration(seconds: 4), () {
      return [
        {
          "sdni": "12346578",
          "sName": "Jhonny Gallegos",
          "iEdad": 45,
          "sSexo": "M",
          "bViveEnPeru": true
        },
        {
          "sDni": "87654321",
          "sName": "Juanita Perez",
          "iEdad": 45,
          "sSexo": "F",
          "BViveEnPeru": true,
          "sUrlImage": "httpimage",
          "btienePareja": false
        }
      ];
    });
  }

  Future<List<Persona>> getPersonas() async {
    return Future.delayed(Duration(seconds: 4), () {
      return [
        Persona(
            bViveEnPeru: true,
            iEdad: 20,
            sDni: "12346578",
            sName: "Jhonny Gallegos",
            bSexo: "M",
            dRating: 15,
            iFolowers: 15,
            iLikes: 15),
        Persona(
          bViveEnPeru: true,
          iEdad: 60,
          sDni: "98765465421",
          sName: "Maria Ibañez",
          bSexo: "F",
          dRating: 60,
          iFolowers: 50,
          iLikes: 6,
        )
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Futuresssss"),
          elevation: 20,
        ),
        body: Center(
          child: FutureBuilder(
            future: getPersonas(),
            builder: (BuildContext context, AsyncSnapshot snap) {
              if (snap.hasData) {
                List<Persona> _personasList = snap.data;
                return ListView.builder(
                  itemCount: _personasList.length,
                  itemBuilder: (BuildContext context, int index) {
                    print(_personasList);
                    return ListTile(
                      title: Text(_personasList[index].sName),
                      leading: Text(_personasList[index].bSexo),
                    );
                  },
                );
              }
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
