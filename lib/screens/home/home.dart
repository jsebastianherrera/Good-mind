import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:good_mind/Shared/custom_card.dart';
import 'package:good_mind/screens/profile/profile.dart';
import 'package:sizer/sizer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.blue.shade900,
    ),
  );
  await Firebase.initializeApp();
  runApp(Sizer(builder: (context, orientation, deviceType) {
    return const MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<String> _items = [
      "CAPS",
      "Hábitos \ny\n prácticas",
      "Foros",
      "Grupos de apoyo",
    ];
    List<String> _routes = [
      "assets/caps.jpg",
      "assets/steps.png",
      "assets/forum.png",
      "assets/support.jpg"
    ];
    List<String> _descriptions = [
      "Te apoyamos",
      "Enterate!",
      "Respondete",
      "Descubrenos ",
    ];
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge, overlays: []);
    return Scaffold(
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          children: [
            DrawerHeader(
              padding: const EdgeInsets.all(0),
              decoration: BoxDecoration(
                color: Colors.blue.shade900,
              ),
              child: Image.asset("assets/avicii.jpg", fit: BoxFit.cover),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Perfil'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Profile(
                          name: "Jorge Sebastian",
                          surname: "Avila Vasquez",
                          career: "Ingenieria de sistemas",
                          age: 21,
                          phone: 3109990001)),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.star),
              title: const Text('Favoritos'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 25.h,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset("assets/logo.png", fit: BoxFit.cover),
              ),
              backgroundColor: Colors.blue.shade900,
              centerTitle: true,
              forceElevated: true,
            )
          ];
        },
        body: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return Padding(
                padding: EdgeInsets.only(top: 2.h, right: 3.w, left: 3.w),
                child: itemCreator(index, _descriptions[index], _items[index],
                    _routes[index]));
          },
        ),
      ),
    );
  }

  Widget itemCreator(
      int index, String description, String tittle, String route) {
    return CustomCard(
      index: index,
      scale: true,
      description: description,
      colour: Colors.blue.shade900,
      tittle: tittle,
      height: 20.h,
      route: route,
      width: 35.w,
    );
  }
}
