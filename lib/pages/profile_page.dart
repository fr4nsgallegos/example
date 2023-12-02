import 'package:example/contants/constants.dart';
import 'package:example/models/person_model.dart';
import 'package:example/services/services_data.dart';
import 'package:example/widgets/column1.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xff181818),
          body: Column(
            children: [
              FutureBuilder(
                future: ServiceData().getProfile(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    Persona auxPerson = snapshot.data;
                    return ProfileCard(
                      auxPerson.sName,
                      auxPerson.sDni,
                      auxPerson.iFolowers.toString(),
                      auxPerson.iLikes.toString(),
                      auxPerson.dRating.toString(),
                    );
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ],
          )),
    );
  }
}

class ProfileCard extends StatelessWidget {
  String nombre;
  String dni;
  String follows;
  String likes;
  String rating;

  ProfileCard(this.nombre, this.dni, this.follows, this.likes, this.rating);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(16),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50),
              bottomLeft: Radius.circular(50),
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://img.freepik.com/foto-gratis/chico-guapo-seguro-posando-contra-pared-blanca_176420-32936.jpg?size=626&ext=jpg&ga=GA1.1.1413502914.1699401600&semt=ais",
                    ),
                    radius: 60,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          nombre,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          dni,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white.withOpacity(0.6),
                          ),
                        ),
                        Divider(),
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column1("Folowers", follows),
                              Column1("Likes", likes),
                              Column1("Rating", rating)
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "Chat",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color: Color(0xffee9b00),
                        ),
                      ),
                    ),
                  ),
                  VerticalDivider(),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Follow"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(
                          0xff0a9396,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
