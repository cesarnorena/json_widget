import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json_widget/json_widget.dart';

class HomePageScreen extends StatefulWidget {
  HomePageScreen({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    final mockAppBar = {
      'widget': 'AppBar',
      'title': {
        'widget': 'Text',
        'data': 'JsonWidget 🤓',
      },
      'centerTitle': true,
    };

    final mockContentResult = {
      'widget': 'Scaffold',
      'appBar': mockAppBar,
      'body': {
        'widget': 'Container',
        'padding': 24.0,
        'child': {
          'widget': 'Text',
          'data': 'It has been a while without seeing you here',
        }
      }
    };

    final mockContent = jsonEncode({
      'widget': 'Scaffold',
      'appBar': mockAppBar,
      'body': {
        'widget': 'Container',
        'padding': 24.0,
        'child': {
          'widget': 'Column',
          'children': [
            {
              'widget': 'Text',
              'data': 'Welcome back',
            },
            {
              'widget': 'TextField',
              'hintText': 'User',
            },
            {
              'widget': 'TextField',
              'hintText': 'Password',
            },
            {
              'widget': 'Container',
              'margin': 16.0,
              'child': {
                'widget': 'RaisedButton',
                'child': {
                  'widget': 'Text',
                  'data': 'Login',
                },
                'onPressed': mockContentResult,
              }
            }
          ]
        },
      },
    });
    return JsonWidget(mockContent);
  }
}
