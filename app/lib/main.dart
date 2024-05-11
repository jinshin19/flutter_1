import 'package:flutter/material.dart';
import 'pages/index.dart';
import 'pages/user.info.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '',
      routes: {
        '/': (context) => IndexComponent(),
        '/user': (context) => UserInfoComponent(),
      },
    ),
  );
}
