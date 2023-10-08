import 'package:flutter/material.dart';
import 'package:proto_app/router/router.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Proto App',
      theme: ThemeData.dark(useMaterial3: true),
      routerConfig: AppRouter.routes,
    );
  }
}