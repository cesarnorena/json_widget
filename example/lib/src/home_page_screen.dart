import 'package:example/src/data/HomeRepository.dart';
import 'package:flutter/material.dart';
import 'package:json_widget/json_widget.dart';

class HomePageScreen extends StatefulWidget {
  HomePageScreen({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePageScreen> {
  final _repository = HomeRepository();

  @override
  Widget build(BuildContext context) {
    return JsonWidget(_repository.get());
  }
}
