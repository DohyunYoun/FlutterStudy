import 'package:flutter/material.dart';

class FadeInOut extends StatefulWidget {
  final String title;

  FadeInOut({Key key, this.title}) : super(key: key);

  @override
  _FadeInOut createState() => _FadeInOut();
}

class _FadeInOut extends State<FadeInOut> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('fadeInOut Demo'),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: Duration(milliseconds: 1000),
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.redAccent,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _visible = !_visible;
          });
        },
        tooltip: 'Toggle Opacity',
        child: Icon(Icons.flip),
      ),
    );
  }
}
