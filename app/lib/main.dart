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
        '/user': (context) {
          final val = ModalRoute.of(context)!.settings.arguments
              as Map<String, dynamic>;
          return UserInfoComponent(
            id: val['id'],
            name: val['name'],
            age: val['age'],
          );
        },
      },
    ),
  );
}
