import 'dart:convert';

import 'package:flutter/material.dart';

import 'parser_manager.dart';

class JsonWidget extends StatelessWidget {
  JsonWidget(this.json);

  final String json;

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> map = jsonDecode(json);
    return ParseManager.parse(map);
  }
}
