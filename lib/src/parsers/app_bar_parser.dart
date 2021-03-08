import 'package:flutter/material.dart';

import 'widget_parser.dart';

class AppBarParser extends WidgetParser {
  AppBarParser() : super('AppBar');

  @override
  Widget parse(Map<String, dynamic> map) {
    return AppBar(
      title: map.parse('title'),
      centerTitle: map['centerTitle'] ?? false,
    );
  }
}
