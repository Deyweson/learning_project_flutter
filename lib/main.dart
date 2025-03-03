import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(color: Colors.red, width: 100, height: 100),
                Container(color: Colors.orange, width: 100, height: 100),
                Container(color: Colors.yellow, width: 100, height: 100),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(color: Colors.green, width: 100, height: 100),
                Container(color: Colors.blue, width: 100, height: 100),
                Container(color: Colors.blueAccent, width: 100, height: 100),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(color: Colors.purple, width: 100, height: 100),
                Container(color: Colors.pink, width: 100, height: 100),
                Container(color: Colors.white, width: 100, height: 100),
              ],
            ),
            Container(
              color: Colors.amber,
              height: 30,
              width: 300,
              child: Text(
                "Deyweson",
                style: TextStyle(color: Colors.white, fontSize: 28),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('Hello');
              },
              child: Text("Aperte"),
            ),
          ],
        ),
      ),
    );
  }
}
