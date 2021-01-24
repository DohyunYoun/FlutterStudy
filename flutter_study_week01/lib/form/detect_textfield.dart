import 'package:flutter/material.dart';

class DetectTextfield extends StatefulWidget {
  @override
  _DetectTextfieldState createState() => _DetectTextfieldState();
}

class _DetectTextfieldState extends State<DetectTextfield> {
  final myController = TextEditingController();
  FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();

    myController.addListener(_printLatestValue);
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    myController.dispose();
    myFocusNode.dispose();

    super.dispose();
  }

  _printLatestValue() {
    print("Second text field: ${myController.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Retrieve Text Input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              focusNode: myFocusNode,
              onChanged: (text) {
                print("First text field: $text");
              },
            ),
            TextField(
              autofocus: true,
              // focus가 이동해도 호출된다?
              controller: myController,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myFocusNode.requestFocus();
          return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text(myController.text),
              );
            },
          );
        },
        // 모바일에서는 동작 안하는듯?
        tooltip: 'Show me the value!',
        child: Icon(Icons.text_fields),
      ),
    );
  }
}
