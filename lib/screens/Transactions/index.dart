import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:benchmark/components/ListItem/index.dart';

class TransactionsPage extends StatefulWidget {
  TransactionsPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _TransactionsPageState createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  List<String> list = List.generate(10000, (index) => index.toString());
  bool isSearching = false;
  String filter = '';

  @override
  Widget build(BuildContext context) {
    List<String> filtered = filter.isNotEmpty
      ? list.where((i) => i.contains(filter)).toList()
      : list;

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onChanged: (value) {
            setState(() {
              filter = value;
            });
          },
          decoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(color: Colors.white70)
          ),
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          for (var index in filtered) ListItem(name: index)
        ]
      ),
    );
  }
}
