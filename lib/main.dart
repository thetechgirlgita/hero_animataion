import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HeroWidgetMain(),
    );
  }
}

String photoURL =
    "https://cdn.pixabay.com/photo/2015/06/19/21/24/the-road-815297__340.jpg";

class HeroWidgetMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hero Animation Widget"),
      ),
      body: GestureDetector(
          onTap: () => Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    HeroWidgetDetail(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return child;
                },
              )),
          child: Center(
            child: Hero(
              tag: 'myImage',
              child: CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(photoURL),
              ),
            ),
          )
      ),
    );
  }
}

class HeroWidgetDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(photoURL),
              fit: BoxFit.fill,
            )

          ),
          child: Icon,


          ),
        );
  }
}
