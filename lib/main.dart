import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio Website',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  void _scrollToSection(double position) {
    _scrollController.animateTo(
      position,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            TextButton(
              onPressed: () {
                _scrollToSection(0);
              },
              child: Text(
                'About Me',
                style: TextStyle(color: Colors.white),
              ),
            ),
            TextButton(
              onPressed: () {
                _scrollToSection(MediaQuery.of(context).size.height);
              },
              child: Text(
                'Projects',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.blueAccent,
              child: Center(
                child: Text(
                  'About Me',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.greenAccent,
              child: Center(
                child: Text(
                  'My Projects',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
