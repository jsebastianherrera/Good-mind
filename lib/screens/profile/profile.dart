import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Profile extends StatefulWidget {
  final String name;
  final String surname;
  final int age;
  final int phone;
  final String career;

  const Profile(
      {Key? key,
      required this.name,
      required this.surname,
      required this.age,
      required this.phone,
      this.career = ""})
      : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 80.w,
              height: 30.h,
              child: const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/avicii.jpg"),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                Text(
                  "Nombre: ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Apellidos: ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.surname,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Carrera: ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.career,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Edad: ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${widget.age}",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            SizedBox(
              height: 5.h,
              child: ElevatedButton(
                child: Text(
                  "Cerrar sesion",
                  style: TextStyle(fontSize: 13.sp, color: Colors.black),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
