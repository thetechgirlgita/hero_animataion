import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HeroAnimation(),
    );
  }
}

class HeroAnimation extends StatelessWidget {
  //const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Hero Animation"),
        ),
        body: GestureDetector(
            onTap: () => Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      HeroAnimation2(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return child;
                  },
                )),

              child: CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                    "https://www.okdam.com/public/upload/product/extra/nepals-flaf-with-clock0150.jpg"),

            )));
  }
}

class HeroAnimation2 extends StatelessWidget {
  //const HeroAnimation2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onDoubleTap: () => Navigator.pop(
            context,
            MaterialPageRoute(
              builder: (context) => HeroAnimation(),
            )),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://www.okdam.com/public/upload/product/extra/nepals-flaf-with-clock0150.jpg"),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
