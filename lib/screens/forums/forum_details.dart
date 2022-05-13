import 'package:flutter/material.dart';

class ForumDetails extends StatelessWidget {
  const ForumDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(6),
        child: Column(
          children: [
            Image.asset("assets/gif/depre.jpg"),
            Card(
              elevation: 8,
              child: ListTile(
                title: const Text(
                  "Nicolas Luas",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  children: [
                    const Text(
                        "\nComunícate,en  ocasiones es difícil contar cómo te sientes, porque hacerlo te duele aún más y te hace sentir débil; no quieres dar lástima o tal vez prefieres pasar tu dolor en soledad."),
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
                      ],
                    )
                  ],
                ),
              ),
            ),
            Card(
              elevation: 8,
              child: ListTile(
                title: const Text(
                  "Miguel Avila",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  children: [
                    const Text(
                        "\nNo seas débil de la depresión no se sale se controla"),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.thumb_up),
                        ),
                        const Text("0"),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.thumb_down),
                        ),
                        const Text("50"),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Card(
              elevation: 8,
              child: ListTile(
                title: const Text(
                  "Sofia Suarez",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  children: [
                    const Text(
                        "\nVive tu vida no te limites mi rey, piensa en que vas a salir adelante"),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.thumb_up),
                        ),
                        const Text("0"),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.thumb_down),
                        ),
                        const Text("0"),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
