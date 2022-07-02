import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text('Calvin likes Flutter')),
        body: ListView.builder(itemBuilder: (_, index) {
          return Container(
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
              child: Text(math.Random().nextDouble().toString()),
              height: 500);
        }),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.yard),
          onPressed: () => {print("Pressed!")},
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: "Hello"),
            BottomNavigationBarItem(
                icon: Icon(Icons.abc_sharp), label: "sharper")
          ],
        ),
        drawer: const Drawer(
          child: Text("hello"),
        ),
      ),
    );
  }
}
