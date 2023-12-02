import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  Widget createCotainer() {
    return Container(
      margin: EdgeInsets.all(20),
      width: 200,
      height: 200,
      color: Colors.red,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Text("head1"),
                // Card(),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 15,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: Center(child: Text("HOLA")),
                      );
                    },
                  ),
                ),
                createCotainer(),
                createCotainer(),
                createCotainer(),
                createCotainer(),
                createCotainer(),
                createCotainer(),
                createCotainer(),
              ],
            ),
          )

          // Column(
          //   children: [
          //     Text("Cabecera"),
          //     Expanded(
          //       child: ListView.builder(
          //         shrinkWrap: true,
          //         itemCount: 15,
          //         scrollDirection: Axis.horizontal,
          //         itemBuilder: (BuildContext context, int index) {
          //           return Card(
          //             child: Center(
          //               child: Text("hoola"),
          //             ),
          //           );
          //         },
          //       ),
          //     ),
          //     Text("head 2"),
          //     Expanded(
          //       child: ListView.builder(
          //         itemCount: 20,
          //         itemBuilder: (BuildContext context, int index) {
          //           return Card(
          //             child: Center(
          //               child: Text("card 2"),
          //             ),
          //           );
          //         },
          //       ),
          //     ),
          //   ],
          // )

          // ListView(
          //   children: [
          //     ListTile(
          //       title: Text("TILE"),
          //     ),
          //     ListTile(
          //       title: Text("TILE"),
          //     ),
          //     ListTile(
          //       title: Text("TILE"),
          //     ),
          //     ListTile(
          //       title: Text("TILE"),
          //     ),
          //     ListTile(
          //       title: Text("TILE"),
          //     ),
          //     ListTile(
          //       title: Text("TILE"),
          //     ),
          //     ListTile(
          //       title: Text("TILE"),
          //     ),
          //     ListTile(
          //       title: Text("TILE"),
          //     ),
          //     Container(
          //       color: Colors.yellow,
          //       height: 150,
          //       padding: EdgeInsets.all(20),
          //       child: ListView.builder(
          //         shrinkWrap: true,
          //         scrollDirection: Axis.horizontal,
          //         itemCount: 10,
          //         itemBuilder: (BuildContext context, int index) {
          //           return Card(
          //             child: Container(
          //               color: Colors.red,
          //               width: 50,
          //               height: 50,
          //             ),
          //           );
          //         },
          //       ),
          //     ),
          //   ],
          // ),
          ),
    );
  }
}
