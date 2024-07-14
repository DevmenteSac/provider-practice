import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/providers/counter_provider.dart';
import 'package:provider_practice/screens/page1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _navigate(BuildContext context, Widget child) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => child),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Para ver, leer, observar el estado, para leer y modificar estado se puede usar .watch
    final int _counter = context.watch<CounterProvider>().counter;
    // Para cambiar el estado
    final _increment = context.read<CounterProvider>().increment;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Provider Practice"),
        actions: [
          IconButton(
              onPressed: () {
                _navigate(context, const Page1());
              },
              icon: const Icon(Icons.looks_one_outlined))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _counter.toString(),
              style: const TextStyle(fontSize: 50),
            ),
            ElevatedButton(
              onPressed: () {
                // la variable con parentesis(), ya que es una funcion
                _increment();
              },
              child: const Text("sumar"),
            ),
          ],
        ),
      ),
    );
  }
}
