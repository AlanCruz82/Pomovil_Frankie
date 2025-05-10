import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool _showText = true;
  double _iconSize = 50.0;

  void _onButtonPressed() {
    setState(() {
      if (_showText) {
        _showText = false;
      } else {
        _iconSize += 10;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplicacion Frankie"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_showText) Text("Presiona el botón"),
            if (!_showText) Icon(Icons.star, size: _iconSize, color: Colors.blue),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onButtonPressed,
        child: Icon(Icons.access_time),
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
