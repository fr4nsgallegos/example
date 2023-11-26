import 'dart:async';

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
        {"id": 1, "name": "platano"},
        {"id": 2, "name": "durazno"},
        {"id": 5, "name": "mandarina"}
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
            future: getProducts(),
            builder: (BuildContext context, AsyncSnapshot snap) {
              if (snap.hasData) {
                List<Map<String, dynamic>> data = snap.data;
                return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(
                        data[index]["name"],
                      ),
                      leading: Text(data[index]["id"].toString()),
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
