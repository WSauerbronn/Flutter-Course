import 'package:flutter/material.dart';

String funcaoSemClasse() {
  return "funcao sem classe";
}

void main() {
  // Variavel local
  int idade = 3;
  var outraIdade = 5;
  dynamic dynVar = 3;
  dynVar = "alo";

  List<String> lista = [];
  lista.add("a");
  lista.add("3.1415926535867");

  if (lista.length == 5) {
    dynVar = 3.14;
  } else {
    dynVar = "alo alo";
  }

  Professor professor = Professor();
  professor.umNovoSetter = 10;
  Professor novoProfessor = Professor.buildProfessor(10);

  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Aula 02")),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("1: '$idade $outraIdade $dynVar $lista'"),

              SizedBox(height: 20),

              Text("2: ${lista[0]}"),

              SizedBox(height: 20),

              Text("3: ${professor.vinculo}"),

              SizedBox(height: 20),

              Text("4: ${funcaoSemClasse()}"),

              SizedBox(height: 20),

              Text("5:${professor.funcaoObrigaParametro(10)}"),

              SizedBox(height: 20),

              Text("6: ${professor.funcaoComParametroPosicionalOpcional()}"),

              SizedBox(height: 20),

              Text("7: ${professor.funcaoComParametroPosicionalOpcional(30)}"),

              SizedBox(height: 20),

              Text("8: ${professor.funcaoComParametroPosicionalNomeado()}"),

              SizedBox(height: 20),

              Text(
                "9: ${professor.funcaoComParametroPosicionalNomeado(a: 90)}",
              ),

              SizedBox(height: 20),

              Text("10: ${professor.umNovoGetter}"),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    ),
  );
}

class Professor {
  String vinculo = "FT";

  Professor() {
    vinculo = "FT FT FT";
  }

  Professor.buildProfessor(int a) {}

  String get umNovoGetter {
    return "Algo pro novo Getter";
  }

  set umNovoSetter(int param) {
    for (int i = 0; i < 1000; i++) {}
  }

  int funcaoRetornaInt() {
    return 3;
  }

  funcaoTambemRetornaInt() {
    return 3;
  }

  funcaoObrigaParametro(int a) {
    return "$a $a $a";
  }

  funcaoComParametroPosicionalOpcional([int a = 0]) {
    return "$a $a $a";
  }

  funcaoComParametroPosicionalNomeado({int a = 0}) {
    return "$a $a $a";
  }
}
