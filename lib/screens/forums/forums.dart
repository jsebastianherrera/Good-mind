import 'package:flutter/material.dart';
import 'package:good_mind/screens/forums/forum_details.dart';

class Forums extends StatelessWidget {
  const Forums({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<String> tittle = [
      "Lo hago bien?",
      "Te interesa!",
      "Metas de un ingeniero"
    ];
    List<String> route = [
      "assets/gif/clash-royale.gif",
      "assets/gif/depre.jpg",
      "assets/gif/metas.jpg",
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        centerTitle: true,
        title: const Text("Foros"),
      ),
      body: ListView.builder(
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
        itemCount: 3,
        itemBuilder: (context, index) {
          return customListTile(context, tittle[index], route[index]);
        },
      ),
    );
  }

  Card customListTile(BuildContext context, String tittle, String route) {
    return Card(
        elevation: 8,
        child: ListTile(
          title: Text(
            tittle,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Column(
            children: [
              Image.asset(route),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.thumb_up),
                  ),
                  const Text("10"),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.thumb_down),
                  ),
                  const Text("0"),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForumDetails()),
                      );
                    },
                    icon: const Icon(Icons.comment),
                  ),
                  const Text("20"),
                ],
              )
            ],
          ),
        ));
  }
}
