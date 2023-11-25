import 'package:example/pages/future_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("EJEMPLO DE TAB BAR"),
          bottom: TabBar(
            tabs: [
              Tab(
                text: "screen1",
              ),
              Tab(
                text: "screen2",
              ),
              Tab(
                text: "screen3",
              ),
              Tab(
                text: "screen4",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // FuturePage(),
            Center(
              child: ElevatedButton(
                  child: Text("goo"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FuturePage(),
                      ),
                    );
                  }),
            ),
            Center(
              child: Text("ESTA ES LA PANTALLA 2"),
            ),
            Center(
              child: Text("ESTA ES LA PANTALLA 3"),
            ),
            Center(
              child: Text("ESTA ES LA PANTALLA 4"),
            ),
          ],
        ),
      ),
    );
  }
}
