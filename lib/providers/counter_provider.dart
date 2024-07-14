import 'package:flutter/material.dart';

// Clase Provider
class CounterProvider extends ChangeNotifier {
  // Atributo privado por guion bajo _
  int _counter = 0;

  // PARA LEER Y MODIFICAR ESTADO SE PUEDE USAR .watch, SIRVE PARA AMBOS
  // Metodo para ver, leer, observar el estado (getter)
  // Se usa con .read o .watch
  int get counter => _counter;

  // Metodo para cambiar el estado (setter)
  // Se usa con .watch
  void increment() {
    _counter++;
    notifyListeners();
  }
}
