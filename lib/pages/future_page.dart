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

  geta() {
    return 10;
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
            future: getTitle(),
            builder: (BuildContext context, AsyncSnapshot snap) {
              if (snap.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (snap.hasError) {
                return (Text("Error: ${snap.error}"));
              } else {
                return Text(snap.data);
              }
            },
          ),
        ),
      ),
    );
  }
}
