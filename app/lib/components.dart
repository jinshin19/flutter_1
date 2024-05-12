import 'package:flutter/material.dart';

class UserComponent extends StatefulWidget {
  final data;
  const UserComponent({required this.data, Key? key}) : super(key: key);

  @override
  State<UserComponent> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<UserComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 7,
        ),
        Container(
          color: const Color.fromARGB(255, 31, 167, 121),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/user', arguments: {
                  'id': widget.data['id'],
                  'name': widget.data['name'],
                  'age': widget.data['age'],
                });
              },
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Text(
                        widget.data['id'],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      widget.data['name'],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
