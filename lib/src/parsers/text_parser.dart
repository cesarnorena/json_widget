import 'package:flutter/material.dart';

import 'widget_parser.dart';

class TextParser extends WidgetParser {
  TextParser() : super('Text');

  @override
  Widget parse(Map<String, dynamic> map) {
    return Text(
      map['data'],
      // textAlign: TextAlign.center,
    );
  }
}
