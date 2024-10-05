// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(WidgetApp());
}

class WidgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'statless',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Displaying an animal image from a network source
            Image.network(
              'https://c4.wallpaperflare.com/wallpaper/521/741/140/'
                  'city-game-landscape-grand-theft-auto-v-wallpaper-preview.jpg', // Image of a dog
              height: 200,
              width: 300,
              fit: BoxFit.cover,
            ),
            // Row with icons and text in the middle
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.home,
                      size: 50,
                      color: Colors.teal,
                    ),
                    Text('Home'),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.square,
                      size: 50,
                      color: Colors.blue,
                    ),
                    Text('likes'),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.red,
                    ),
                    Text('Profile'),
                  ],
                ),
              ],
            ),
            // Elevated button at the bottom
            ElevatedButton(
              onPressed: () {
                print('press');
              },
              child: Text('subscribe'),
            ),
          ],
        ),
      ),
    );
  }
}