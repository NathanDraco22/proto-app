import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:proto_app/modules/webview/view/webview_screen.dart';
import 'package:proto_app/router/router.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    if(kDebugMode){
      return MaterialApp(
        title: 'Proto App',
        theme: ThemeData.dark(useMaterial3: true),
        home:  const WebViewScreen(),
      );
    }
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Proto App',
      theme: ThemeData.dark(useMaterial3: true),
      routerConfig: AppRouter.routes,
    );
  }
}