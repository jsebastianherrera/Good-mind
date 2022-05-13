import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:good_mind/screens/habits/habitsInfo.dart';

class Habits extends StatefulWidget {
  const Habits({Key? key}) : super(key: key);

  @override
  State<Habits> createState() => _HabitsState();
}

class _HabitsState extends State<Habits> {
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('habits').snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _usersStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Center(child: Text('Something went wrong'));
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        return ListView(
          padding: const EdgeInsets.all(10),
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
            Map<String, dynamic> data =
                document.data()! as Map<String, dynamic>;
            return habitsCard(context, data['tittle'], data['description']);
          }).toList(),
        );
      },
    );
  }
}

Widget habitsCard(BuildContext context, String tittle_, String description_) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HabitsInfo()),
      );
    },
    child: Card(
      child: ListTile(
        contentPadding: const EdgeInsets.all(10),
        title: Text(
          tittle_.toUpperCase(),
          textAlign: TextAlign.start,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(description_, textAlign: TextAlign.justify),
      ),
    ),
  );
}
