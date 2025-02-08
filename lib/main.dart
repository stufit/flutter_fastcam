import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Study to Container'),
      ),
      body: CustomContainer(),
    ),
  ));
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
      decoration: BoxDecoration(
          // boxDecoration 사용시에는 container 밖에 color 옵션 쓰면 에러발생
          color: Colors.amber,
          border: Border.all(
            color: Colors.red,
            width: 5,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color:Colors.grey.withOpacity(0.3),
              offset: Offset(5, 1),
              blurRadius: 10,
              spreadRadius: 10
            ),
            BoxShadow(
                color:Colors.pink.withOpacity(0.3),
                offset: Offset(-10, -10),
                blurRadius: 10,
                spreadRadius: 10
            ),
          ]),
      margin: EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 10,
      ),
      child: Center(
        child: Container(
          color: Colors.blueAccent,
          child: Text('하이요'),
        ),
      ),
    );
  }
}
