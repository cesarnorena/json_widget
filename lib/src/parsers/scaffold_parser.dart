import 'package:flutter/material.dart';

import 'widget_parser.dart';

class ScaffoldParser extends WidgetParser {
  ScaffoldParser() : super('Scaffold');

  @override
  Widget parse(Map<String, dynamic> map) {
    return Scaffold(
      appBar: map.parse('appBar') as PreferredSizeWidget?,
      body: map.parse('body'),
    );
  }
}
