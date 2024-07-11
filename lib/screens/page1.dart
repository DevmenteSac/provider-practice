import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/providers/counter_provider.dart';
import 'package:provider_practice/screens/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  void _navigate(BuildContext context, Widget child) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => child),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Provider Practice Pagina 1"),
        actions: [
          IconButton(
              onPressed: () {
                _navigate(context, const Page2());
              },
              icon: const Icon(Icons.looks_two_outlined))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              // Aqui veo el estado
              context.watch<CounterProvider>().counter.toString(),
              style: const TextStyle(fontSize: 100),
            ),
          ],
        ),
      ),
    );
  }
}
