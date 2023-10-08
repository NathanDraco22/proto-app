import 'package:flutter/material.dart';
import 'package:proto_app/modules/coin_cap_tracker/view/coin_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Proto App',
      theme: ThemeData.dark(useMaterial3: true),
      home: const CoinScreen()
    );
  }
}