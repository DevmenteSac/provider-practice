import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/providers/counter_provider.dart';
import 'package:provider_practice/screens/home_screen.dart';

void main() {
  runApp(
    // Para poder usar Provider Envolvemos la app con MultiProvider
    MultiProvider(
      providers: [
        // Y aca usamos los diferentes Providers
        ChangeNotifierProvider(create: (context) => CounterProvider()),
        // ChangeNotifierProvider(create: (context) => CounterProvider()),
        // ChangeNotifierProvider(create: (context) => CounterProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const HomeScreen(),
    );
  }
}
