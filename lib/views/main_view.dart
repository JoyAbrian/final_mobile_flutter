import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Hi, Joy',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/avatar.png'),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 15),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: const Text(
                'Favorite Waifu',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 600,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16/9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              viewportFraction: 0.8,
            ),
            items: [
              'images/1.png',
              'images/2.png',
              'images/3.png',
              'images/4.png',
              'images/5.png',
              'images/6.png',
              'images/7.png',
              'images/8.png',
              'images/9.png',
            ].map((item) => Center(
              child: Image.asset(
                item,
                fit: BoxFit.cover,
                width: 1000,
              ),
            )).toList(),
          ),
        ],
      ),
    );
  }
}