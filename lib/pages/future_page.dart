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
    return Future.delayed(Duration(seconds: 10), () {
      return "Real - Kendrick Lamar";
    });
  }

  Future<int> getNumber() async {
    return Future.delayed(Duration(seconds: 4), () {
      return 999;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Futuresssss"),
        ),
        body: Center(
          child: FutureBuilder(
            future: getTitle(),
            builder: (BuildContext context, AsyncSnapshot snap) {
              if (snap.hasData) {
                return Text(snap.data);
              }
              return Container(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.red,
                  color: Colors.cyan,
                  // strokeWidth: 8,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
