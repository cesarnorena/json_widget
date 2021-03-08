import 'package:flutter/material.dart';

import 'widget_parser.dart';

class ContainerParser extends WidgetParser {
  ContainerParser() : super('Container');

  @override
  Widget parse(Map<String, dynamic> map) {
    return Container(
      padding: EdgeInsets.all(map['padding'] ?? 0),
      margin: EdgeInsets.all(map['margin'] ?? 0),
      child: map.parse('child'),
    );
  }
}
