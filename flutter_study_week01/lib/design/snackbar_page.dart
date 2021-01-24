import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbar Demo'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final snackBar = SnackBar(
              content: Text('Yay! A SnackBar!'),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  //TODO: 여기서 안에 snackBar 값을 바꿀 수 있을까? label이나 content
                  // snackBar.content = Text('is Clicked');
                },
              ),
            );

            //Scaffold deprecated -> change to ScaffoldMessenger
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: Text('Show SnackBar'),
        ),
      ),
    );
  }
}
