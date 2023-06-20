import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.teal,
            body: SafeArea(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50.0,
                  foregroundImage: AssetImage('images/profile.jpg'),
                ),
                const Text(
                  'Suraj Murtadak',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    color: Colors.white,
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontFamily: 'RobotoMono',
                    color: Colors.white70,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Card(
                  // width: double.infinity,
                  // height: 50.0,
                  margin: const EdgeInsets.all(10.0),
                  // padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  color: Colors.white,
                  child: ListTile(
                    leading: const Icon(
                      Icons.phone,
                      size: 25.0,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+91 9421825837',
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.teal[900],
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: const EdgeInsets.all(10.0),
                  // padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  // width: double.infinity,
                  // height: 50.0,
                  child: ListTile(
                    leading: const Icon(
                      Icons.email,
                      color: Colors.teal,
                      size: 25.0,
                    ),
                    title: Text(
                      'surajmurtadak@gmail.com',
                      style: TextStyle(
                        fontSize: 17.0,
                        color : Colors.teal[900],
                      ),
                    ),
                  )
                ),
              ],
            ))));
  }
}
