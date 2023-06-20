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
                  Container(
                    width: double.infinity,
                    height: 100.0,
                    margin: const EdgeInsets.all(10.0),
                    color: Colors.white,
                    child: const Center(
                      child: Text("Row Column"),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    margin: const EdgeInsets.all(10.0),
                    width: double.infinity,
                    height: 100.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 80.0,
                          height:80.0,
                          margin: const EdgeInsets.all(10.0),
                          color: Colors.blue,
                          child: const Center(
                            child: Text('first'),
                          ),
                        ),
                        Container(
                          width: 80.0,
                          height:80.0,
                          margin: const EdgeInsets.all(10.0),
                          color: Colors.blue,
                          child: const Center(
                            child: Text('second'),
                          ),
                        ),
                        Container(
                          width: 80.0,
                          height:80.0,
                          margin: const EdgeInsets.all(10.0),
                          color: Colors.blue,
                          child: const Center(
                            child: Text('third'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            )));
  }
}
