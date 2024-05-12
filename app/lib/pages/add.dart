import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddUserComponent extends StatefulWidget {
  const AddUserComponent({super.key});

  @override
  State<AddUserComponent> createState() => _AddUserComponentState();
}

class _AddUserComponentState extends State<AddUserComponent> {
  TextEditingController _name = TextEditingController();
  TextEditingController _age = TextEditingController();

  void submitHandler() async {
    final request = await http.post(
      Uri.parse('http://10.0.2.2:5000/users'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(
        {
          'name': _name.text,
          'age': _age.text,
        },
      ),
    );
    if (request.statusCode == 201) {
      _name.clear();
      _age.clear();
      Navigator.pushNamed(context, '/');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        foregroundColor: Colors.white,
        title: Text(
          "Create New User",
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            "Name",
            style: TextStyle(
              color: Colors.grey[400],
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _name,
              style: TextStyle(
                color: Colors.white,
              ),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                filled: false,
                hintText: "Enter name...",
                fillColor: Colors.white,
                focusColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  borderSide: BorderSide(color: Colors.white),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Age",
            style: TextStyle(
              color: Colors.grey[400],
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _age,
              keyboardType: TextInputType.number,
              style: TextStyle(
                color: Colors.white,
              ),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                filled: false,
                hintText: "Enter age...",
                fillColor: Colors.white,
                focusColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  borderSide: BorderSide(color: Colors.white),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  submitHandler();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 31, 167, 121),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "SUBMIT",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 19,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
