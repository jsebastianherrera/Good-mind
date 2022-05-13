// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:good_mind/modules/chat_detail_page.dart';
import 'package:sizer/sizer.dart';

class Group extends StatelessWidget {
  const Group({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> route = [
      "images/001-panda.png",
      "images/002-lion.png",
      "images/003-tiger.png",
      "images/004-bear-1.png",
      "images/005-parrot.png",
    ];
    List<String> groups = [
      "assets/groups/neverAlone.jpg",
      "assets/groups/medicina.jpg",
      "assets/groups/sistemas.png",
      "assets/groups/sistemas.png"
    ];
    List<String> tittles = [
      "Javeriano ayuda javeriano",
      "Team Medicina",
      "Team Sistemas",
      "Team Indusplay",
    ];
    List<String> description = [
      "Bienvenidos a nuestro grupo javeriano apoya javeriano, recuerda que en este grupo podras compartir con miembros de nuestra comunidad,saludos.",
      "Bienvenidos a nuestro grupo Team Medicina, recuerda que en este grupo podras compartir con miembros de nuestra comunidad,saludos.",
      "Bienvenidos a nuestro grupo Team Sistemas, recuerda que en este grupo podras compartir con miembros de nuestra comunidad,saludos.",
      "Bienvenidos a nuestro grupo Team Industrial,todo muy facil.",
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Grupos",
        ),
        backgroundColor: Colors.blue.shade900,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            color: Colors.blue.shade900,
            height: 10.h,
            child: ListView.separated(
              padding: const EdgeInsets.all(12),
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 5.w,
                );
              },
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkWell(
                  // ignore: avoid_print
                  onTap: () => print("clicked"),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(30.0)),
                      border: Border.all(
                        color: Colors.white,
                        width: 1.0,
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(route[index]),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: groups.length,
              itemBuilder: (context, index) {
                return miCard(
                    context, groups[index], tittles[index], description[index]);
              },
            ),
          )
        ],
      ),
    );
  }

  Card miCard(
      BuildContext context, String route, String tittle, String desciption) {
    return Card(
      // Con esta propiedad modificamos la forma de nuestro card
      // Aqui utilizo RoundedRectangleBorder para proporcionarle esquinas circulares al Card
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

      // Con esta propiedad agregamos margen a nuestro Card
      // El margen es la separación entre widgets o entre los bordes del widget padre e hijo
      margin: const EdgeInsets.all(15),

      // Con esta propiedad agregamos elevación a nuestro card
      // La sombra que tiene el Card aumentará
      elevation: 1,

      // La propiedad child anida un widget en su interior
      // Usamos columna para ordenar un ListTile y una fila con botones
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
              opacity: 180, image: AssetImage(route), fit: BoxFit.cover),
        ),
        child: Column(
          children: <Widget>[
            // Usamos ListTile para ordenar la información del card como titulo, subtitulo e icono
            ListTile(
              contentPadding: const EdgeInsets.fromLTRB(15, 10, 25, 0),
              title: Text(
                tittle,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(desciption),
              leading: const Icon(Icons.question_mark),
            ),

            // Usamos una fila para ordenar los botones del card
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                    onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ChatDetailPage()),
                          )
                        },
                    child: tittle != "Javeriano ayuda javeriano"
                        ? const Text('Solicitar unirse',
                            style: TextStyle(fontWeight: FontWeight.bold))
                        : const Text('Ver',
                            style: TextStyle(fontWeight: FontWeight.bold))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
