import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = List.generate(100, (i) => 'Item ${i}');
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter6'),
        backgroundColor: Colors.lightBlue,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 2,
        ),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int indx) {
          return Container(
            color: Colors.lightGreen[100 + (indx % 6) * 100],
            child: Text('ชื่อ ${items[indx]}'),
          );
        },
      ),
    );
  }
}
