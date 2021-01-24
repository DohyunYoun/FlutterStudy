import 'package:flutter/material.dart';

class ChangePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          child: Text('Go!'),
          onPressed: () {
            Navigator.of(context).push(_createRoute());
          },
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;

      //1. Tween : Bottom to up (0,1)->(0,0)
      var tween = Tween(begin: begin, end: end);
      var offsetAnimation = animation.drive(tween);

      //2. CurveTween
      var curve = Curves.bounceIn;
      var curvetween = tween.chain(CurveTween(curve: curve));
      offsetAnimation = animation.drive(curvetween);

      //3. CurvedAnimation
      var curvedAnimation = CurvedAnimation(
        parent: animation,
        curve: curve,
      );
      offsetAnimation = tween.animate(curvedAnimation);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}

class Page2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Page 2'),
      ),
    );
  }
}
