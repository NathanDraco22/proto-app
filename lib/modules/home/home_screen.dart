import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        centerTitle: true,
        backgroundColor: Colors.blue.withAlpha(50),  
      ),
      body: ListView(
        children:  [
          const Divider(height: 1),
          ListTile(
            leading: const Icon(Icons.attach_money),            
            title:  const Text("CoinCap Websocket"),
            onTap: () {
              context.go('/coincap');
            },
          ),
          const Divider(height: 1),
          ListTile(
            leading: const Icon(Icons.network_check),
            title:  const Text("Rick-Morty GraphQL"),
            onTap: () {
              context.go('/rick-gql');
            },
          ),
          const Divider(height: 1),
          ListTile(
            leading: const Icon(Icons.view_array_outlined),
            title:  const Text("WebView 3d viewer"),
            onTap: () {
              context.go('/webview');
            },
          ),
        ],
      ),
    );
  }
}


