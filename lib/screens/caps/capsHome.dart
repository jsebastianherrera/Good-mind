// ignore_for_file: file_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:good_mind/Shared/video.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class Caps extends StatelessWidget {
  Caps({Key? key}) : super(key: key);
  final Uri _url = Uri.parse('https://linktr.ee/javerianacaps');
  @override
  Widget build(BuildContext context) {
    final List<String> url = [
      "assets/social_networks/caps.jpg",
      "assets/social_networks/facebook.png",
      "assets/social_networks/instagram.png",
      "assets/social_networks/whatssapp.png",
      "assets/social_networks/twitter.png",
    ];
    final List<String> videos = [
      "HYzQYhW8-HE",
      "uYLxsN_0FBg",
    ];
    final List<String> route = [
      "assets/caps/conversemos.jpeg",
      "assets/caps/fumar.jpeg",
      "assets/caps/celebra.jpeg",
    ];
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade900,
        onPressed: _launchUrl,
        child: const Icon(Icons.question_answer),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.blue.shade900,
              height: 10.h,
              child: ListView.separated(
                padding: const EdgeInsets.all(12),
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 10.w,
                  );
                },
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    // ignore: avoid_print
                    onTap: () => print("clicked"),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(url[index]),
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              height: 70.h,
              child: CarouselSlider.builder(
                itemCount: 3,
                itemBuilder: (context, index, realIndex) {
                  return buildImage(route[index]);
                },
                options: CarouselOptions(
                  height: 70.h,
                ),
              ),
            ),
            Text(
              "Celebra la Vida",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 30.h,
              child: VideoPage(ids: videos[0]),
            ),
            Text(
              "Rumba segura",
              textAlign: TextAlign.center,
              maxLines: 1,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 30.h,
              child: VideoPage(ids: videos[1]),
            ),
          ],
        ),
      ),
    );
  }

  void _launchUrl() async {
    if (!await launchUrl(_url)) throw 'Could not launch $_url';
  }

  Widget buildImage(String route) {
    return Container(
      child: Image(image: AssetImage(route), fit: BoxFit.cover),
      margin: const EdgeInsets.symmetric(horizontal: 10),
    );
  }
}
