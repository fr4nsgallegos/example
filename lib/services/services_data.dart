import 'package:example/models/person_model.dart';

class ServiceData {
  Future<Persona> getProfile() async {
    return Future.delayed(Duration(seconds: 5), () {
      return Persona(
        bViveEnPeru: true,
        iEdad: 50,
        sDni: "12345678",
        sName: "Pablo",
        bSexo: "M",
        dRating: 8.5,
        iFolowers: 25,
        iLikes: 500,
      );
    });
  }

  Future<List<Persona>> getListProfile() async {
    return Future.delayed(
      Duration(seconds: 5),
      () {
        return [
          Persona(
            bViveEnPeru: true,
            iEdad: 50,
            sDni: "12345678",
            sName: "Pablo",
            bSexo: "M",
            dRating: 8.5,
            iFolowers: 25,
            iLikes: 500,
          ),
          Persona(
            bViveEnPeru: true,
            iEdad: 20,
            sDni: "12345678",
            sName: "Matias",
            bSexo: "M",
            dRating: 9.2,
            iFolowers: 15,
            iLikes: 150,
          ),
        ];
      },
    );
  }
}
