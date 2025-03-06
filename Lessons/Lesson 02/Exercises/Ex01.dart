import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.blue),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> getChildren() {
    int numChildren = 100;
    List<Widget> children = [];
    for (int i = 0; i <= numChildren; i++) {
      Color textColor = Colors.red;
      if (i % 2 != 0) {
        textColor = Colors.blue;
      }
      children.add(
        GestureDetector(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Você tocou no numero $i!"),
                duration: Duration(seconds: 2),
              ),
            );
          },
          child: Text(
            "$i",
            style: TextStyle(fontStyle: FontStyle.italic, color: textColor),
          ),
        ),
      );
    }
    return children;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: getChildren(),
          ),
        ),
      ),
    );
  }
}
