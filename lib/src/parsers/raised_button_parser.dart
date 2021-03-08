import 'package:flutter/material.dart';

import 'widget_parser.dart';

class RaisedButtonParser extends WidgetParser {
  RaisedButtonParser() : super('RaisedButton');

  @override
  Widget parse(Map<String, dynamic> map) {
    final onPressed = map.parse('onPressed');

    return Builder(
      builder: (context) {
        return RaisedButton(
          onPressed:
              onPressed != null ? () => navigate(context, onPressed) : null,
          child: map.parse('child'),
        );
      },
    );
  }

  void navigate(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
  }
}
