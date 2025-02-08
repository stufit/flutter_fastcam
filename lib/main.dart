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
    return Stack(
      children: [
        Container(
          width: 500,
          height: 500,
          color: Colors.black,
        ),
        Container(
          width: 500,
          height: 400,
          color: Colors.red,
        ),
        Container(
          width: 500,
          height: 300,
          color: Colors.amber,
        ),
        // Positioned(
        //   bottom: 5,
        //   right: 30,
        //   child: Container(
        //     width: 200,
        //     height: 200,
        //     color: Colors.greenAccent,
        //   ),
        // ),
        Align(
          alignment: Alignment(0.5,0.7),
          child: Container(
            width: 100,
            height: 100,
            color: Colors.pink,
          ),
        )
      ],
    );
  }
}
