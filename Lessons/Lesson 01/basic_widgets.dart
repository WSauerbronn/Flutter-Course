import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "test",
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first App"),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("test test"),
              Container(color: Colors.yellow, width: 40, height: 250),
              Text("Hello World!"),
              Icon(Icons.ac_unit),
              TextFormField(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.airline_seat_legroom_extra_sharp),
        ),
      ),
    ),
  );
}
