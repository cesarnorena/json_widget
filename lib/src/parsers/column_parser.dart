import 'package:flutter/material.dart';

import 'widget_parser.dart';

class ColumnParser extends WidgetParser {
  ColumnParser() : super('Column');

  @override
  Widget parse(Map<String, dynamic> map) {
    return Column(
      children: [...map.parseList('children')],
      crossAxisAlignment: CrossAxisAlignment.stretch,
    );
  }
}
