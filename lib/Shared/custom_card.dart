import 'package:flutter/material.dart';
import 'package:good_mind/screens/caps/capsHome.dart';
import 'package:good_mind/screens/forums/forums.dart';
import 'package:good_mind/screens/groups/groups.dart';
import 'package:good_mind/screens/habits/habits_practices_screen.dart';
import 'package:good_mind/screens/profile/profile.dart';
import 'package:sizer/sizer.dart';

class CustomCard extends StatelessWidget {
  final String tittle;
  final bool scale;
  final double height;
  final double width;
  final Color colour;
  final String route;
  final String description;
  final int index;

  CustomCard(
      {Key? key,
      required this.index,
      this.height = 100,
      required this.tittle,
      this.colour = Colors.white,
      required this.description,
      required this.route,
      this.width = 100,
      this.scale = false})
      : super(key: key);

  final List<Widget> _pages = [
    Caps(),
    const HabitAndPractices(),
    const Forums(),
    const Group(),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        color: colour,
        child: InkWell(
          splashColor: colour.withAlpha(60),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => _pages[index]),
            );
          },
          child: Padding(
            padding:
                EdgeInsets.only(left: 2.w, right: 2.w, top: 1.h, bottom: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 40.w,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    image: DecorationImage(
                      image: AssetImage(route),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          tittle.toUpperCase(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
