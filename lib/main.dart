import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(icon: Icon(Icons.home),onPressed: (){
            print("탭탭");
          },),
          Icon(Icons.place)
        ],
        centerTitle: false,
        title: Text('this is app bar'),
      ),
      body: TestWidget(),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.bug_report
        ),
        onPressed: (){
          print("탭버그!");
        },
      ),
    ),
  ));
}

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Text(
          'hello flutter',
          style: TextStyle(color: Colors.black, fontSize: 60),
        ),
      ),
    );
  }
}
