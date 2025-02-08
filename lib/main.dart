import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Study to Container'),
      ),
      body: Bodys(),
    ),
  ));
}

class Bodys extends StatelessWidget {
  const Bodys({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          color: Colors.deepPurpleAccent,
        ),
        Expanded(
          child: Container(
            color: Colors.greenAccent,
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            color: Colors.red,
          ),
        ),
        Flexible(
          flex: 2,
          child: Container(
            color: Colors.blue,
          ),
        ),
        Flexible(
          flex: 2,
          child: Container(
            color: Colors.green,
          ),
        ),
        Flexible(
          flex: 2,
          child: Container(
            color: Colors.amber,
          ),
        ),
      ],
    );
  }
}
