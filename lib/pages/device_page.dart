import 'package:flutter/material.dart';

class DevicePage extends StatelessWidget {
  const DevicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              width: 200,
              height: 200,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                // color: Colors.red,
                // borderRadius: BorderRadius.circular(100),
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.orange,
                  width: 10,
                ),
              ),
              child: Text(
                "H",
                style: TextStyle(color: Colors.orange, fontSize: 100),
              ),
            )
          ],
        ),
      ),
    );
  }
}
