import 'package:flutter/material.dart';
import 'package:ebook/pages/homepage.dart';


void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
        
        ),
        primaryColor: Colors.cyan.shade400,
        accentColor: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Ebooks📚',
            style: TextStyle(
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
        ),
        body: HomePage(),
      ),
    );
  }
}


