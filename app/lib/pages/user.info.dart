import 'package:flutter/material.dart';

class UserInfoComponent extends StatelessWidget {
  final id;
  final name;
  final age;
  const UserInfoComponent({this.id, this.name, this.age, Key? key})
      : super(key: key);

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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "USER'S ID",
              style: TextStyle(
                color: Colors.grey[400],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              id,
              style: TextStyle(
                color: Color.fromARGB(255, 31, 167, 121),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "USER'S NAME",
              style: TextStyle(
                color: Colors.grey[400],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              name,
              style: TextStyle(
                color: Color.fromARGB(255, 31, 167, 121),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "USER'S AGE",
              style: TextStyle(
                color: Colors.grey[400],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              age,
              style: TextStyle(
                color: Color.fromARGB(255, 31, 167, 121),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 31, 167, 121),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 19,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "UPDATE",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 200, 55, 39),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.delete,
                        color: Colors.white,
                        size: 19,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "DELETE",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
