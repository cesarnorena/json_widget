import 'package:flutter/material.dart';

import 'widget_parser.dart';

class TextFieldParser extends WidgetParser {
  TextFieldParser() : super('TextField');

  @override
  Widget parse(Map<String, dynamic> map) {
    return TextField(
      decoration: InputDecoration(
        hintText: map['hintText'],
      ),
    );
  }
}
