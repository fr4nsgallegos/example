import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Ejemplo de stack"),
        ),
        body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: double.infinity,
              color: Colors.cyan,
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Text(
                "Hola pertenezco a un stack",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Presionar"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
