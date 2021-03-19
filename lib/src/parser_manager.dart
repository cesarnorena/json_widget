import 'package:flutter/material.dart';

import 'parsers/app_bar_parser.dart';
import 'parsers/column_parser.dart';
import 'parsers/container_parser.dart';
import 'parsers/raised_button_parser.dart';
import 'parsers/scaffold_parser.dart';
import 'parsers/text_field_parser.dart';
import 'parsers/text_parser.dart';
import 'parsers/widget_parser.dart';

class ParseManager {
  ParseManager._internal();

  factory ParseManager() => _instance;

  static final ParseManager _instance = ParseManager._internal();

  static List<WidgetParser> _parsers = [
    ScaffoldParser(),
    ColumnParser(),
    AppBarParser(),
    TextParser(),
    TextFieldParser(),
    RaisedButtonParser(),
    ContainerParser(),
  ];

  static Widget? parse(Map<String, dynamic> map) {
    // ignore: unnecessary_cast
    final parser = (_parsers as List<WidgetParser?>).firstWhere(
      (parser) => parser?.widget == map['widget'],
      orElse: () => null,
    );
    return parser?.parse(map);
  }

  static List<Widget> parseList(List list) {
    final widgets = list.map((e) => parse(e)).where((e) => e != null);
    return widgets.toList() as List<Widget>;
  }

  static void addParser(WidgetParser parser) => _parsers.add(parser);
}
