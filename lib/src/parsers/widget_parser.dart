import 'package:flutter/material.dart';

import '../parser_manager.dart';

abstract class WidgetParser {
  final String widget;

  WidgetParser(this.widget);

  Widget parse(Map<String, dynamic> map);
}

extension MapParser on Map<String, dynamic> {
  Widget? parse(String name) {
    return ParseManager.parse(this[name]);
  }

  List<Widget> parseList(String name) {
    return ParseManager.parseList(this[name]);
  }
}
