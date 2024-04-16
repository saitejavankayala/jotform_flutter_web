import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter/services.dart' show rootBundle;

class MyJotformWidget extends StatelessWidget {
  const MyJotformWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Jotform Form'),
      ),
      body: FutureBuilder<String>(
        future: rootBundle.loadString('index.html'),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Html(data: snapshot.data);
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
