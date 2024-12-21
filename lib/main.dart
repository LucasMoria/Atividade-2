import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Layout Responsivo'),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return Center(
                child: Text(
                  'Tela Pequena',
                  style: TextStyle(fontSize: 24),
                ),
              );
            } else {
              return Center(
                child: Text(
                  'Tela Grande',
                  style: TextStyle(fontSize: 32),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
