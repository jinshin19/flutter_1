import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:app/components.dart';

class IndexComponent extends StatefulWidget {
  const IndexComponent({super.key});

  @override
  State<IndexComponent> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<IndexComponent> {
  final base_url = "http://10.0.2.2:5000";
  List<dynamic> users = [];
  @override
  void initState() {
    super.initState();
    getDatas();
  }

  getDatas() async {
    try {
      final response = await http.get(Uri.parse("$base_url/users"));
      setState(() {
        users = jsonDecode(response.body)['data'];
      });
    } catch (e) {
      throw e;
    }
  }

  Widget Test(props) {
    return Text(
      props,
      style: TextStyle(color: Colors.white),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        foregroundColor: Colors.white,
        title: Text("My First App With Express Server"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: users.map((user) => UserComponent(data: user)).toList(),
        ),
      ),
    );
  }
}
