import 'dart:convert';

import 'package:flutter/material.dart';

import 'parser_manager.dart';

class JsonWidget extends StatelessWidget {
  JsonWidget(String json) : _json = json;

  final String _json;

  @override
  Widget build(BuildContext context) {
    final map = jsonDecode(_json);
    return ParseManager.parse(map)!;
  }
}
