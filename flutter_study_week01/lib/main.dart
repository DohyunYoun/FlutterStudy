import 'package:flutter/material.dart';
import 'package:flutter_study_week01/animation/change_page.dart';
import 'package:flutter_study_week01/animation/drag_img.dart';
import 'package:flutter_study_week01/animation/fade_in_out.dart';
import 'package:flutter_study_week01/design/drawer_page.dart';
import 'package:flutter_study_week01/design/orientation_page.dart';
import 'package:flutter_study_week01/design/shared_theme.dart';

import 'animation/random_figure.dart';
import 'design/snackbar_page.dart';
import 'design/tab_page.dart';
import 'form/detect_textfield.dart';
import 'form/validate_n_submit.dart';

main() {
  runApp(MaterialApp(
    home: DetectTextfield(),
    theme: ThemeData(
      //TODO: ripple 처리는 어떻게 할까?
      brightness: Brightness.dark,
      primaryColor: Colors.lightBlue[800],
      accentColor: Colors.cyan[600],

      fontFamily: 'Georgia',

      textTheme: TextTheme(
        headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
      ),
    ),
  ));
}


