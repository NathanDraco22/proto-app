import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:proto_app/modules/webview/view/html_webview.dart';
import 'package:proto_app/modules/webview/view/mobile_webview.dart';

class WebViewScreen extends StatelessWidget {
  const WebViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    late Widget content;
    try {
      content = generateWebViewMobile();
    } catch (e) {
      if (kIsWeb) {
        content = generateWebViewWeb();
      }else {
        content = const Center(child: Text("No Supported in web"),);
      }
      
    }
    return Scaffold(
      appBar: AppBar(title: const Text("WebView demo")),
      body: content
    );
  }

}






