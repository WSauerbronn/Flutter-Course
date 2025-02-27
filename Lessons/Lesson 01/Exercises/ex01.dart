// Objective: Recreate the tree presented by the professor.

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "ex01",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Exercicio 01"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              Slider(value: 1, onChanged: (double value) {}),
              Text("Cotacao"),
              Text(
                "Valor em Dolar",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Checkbox(value: true, onChanged: (bool? value) {}),
                  Checkbox(value: true, onChanged: (bool? value) {}),
                  Checkbox(value: true, onChanged: (bool? value) {}),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.attach_money),
        ),
      ),
    ),
  );
}
