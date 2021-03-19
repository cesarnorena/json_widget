import 'dart:convert';

class HomeRepository {
  String get() {

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

    return jsonEncode({
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
              'widget': 'Text',
              'data': 'In this field you need to include your email',
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
  }
}
