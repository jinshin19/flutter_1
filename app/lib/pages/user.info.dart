import 'package:flutter/material.dart';

class UserInfoComponent extends StatelessWidget {
  const UserInfoComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        foregroundColor: Colors.white,
        title: Text(
          "User Info",
        ),
      ),
      body: Column(),
    );
  }
}
