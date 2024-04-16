import 'dart:html';
import 'dart:ui_web' as ui;
import 'package:flutter/material.dart';

void main() {
  ui.platformViewRegistry.registerViewFactory(
    'jotform',
        (int viewId) => IFrameElement()
      ..src = 'assets/index.html'
      ..style.width = '50%'
      ..style.height = '100%'
      ..style.border = 'none',
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('JotForm Embedded'),
        ),
        body: const JotFormWebView(),
      ),
    );
  }
}

class JotFormWebView extends StatelessWidget {
  const JotFormWebView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(100),
      child: HtmlElementView(
        viewType: 'jotform',
      ),
    );
  }
}
