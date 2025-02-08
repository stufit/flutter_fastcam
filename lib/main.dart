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

/*
// 컬럼 좌우 조절
class Bodys extends StatelessWidget {
  const Bodys({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.blueGrey,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center, // 컬럼 중앙정렬
        crossAxisAlignment: CrossAxisAlignment.start, // 컬럼 왼쪽 정렬
        children: [
          Container(
            width: 100,
            height: 80,
            color: Colors.red,
            child: Center(
              child: Text('컨테이너1'),
            ),
          ),
          Container(
            width: 100,
            height: 80,
            color: Colors.amber,
            child: Center(
              child: Text('컨테이너2'),
            ),
          ),
          Container(
            width: 100,
            height: 80,
            color: Colors.greenAccent,
            child: Center(
              child: Text('컨테이너3'),
            ),
          ),
        ],
      ),
    );
  }
}

 */

// 컬럼 상하 조절
class Bodys extends StatelessWidget {
  const Bodys({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.blueGrey,
      child: SingleChildScrollView( // 스크롤기능
        scrollDirection: Axis.vertical, // 스크롤 시 수직 or 수평으로 스크롤
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end, // Row 맨 오른쪽으로정렬
              crossAxisAlignment: CrossAxisAlignment.center, // Row 가운데 정렬
              children: [
                Container(
                  width: 100,
                  height: 80,
                  color: Colors.red,
                  margin: EdgeInsets.symmetric(
                    vertical: 30,
                  ),
                  child: Center(
                    child: Text('컨테이너1'),
                  ),
                ),
                Container(
                  width: 100,
                  height: 80,
                  color: Colors.amber,
                  child: Center(
                    child: Text('컨테이너2'),
                  ),
                ),
                Container(
                  width: 100,
                  height: 80,
                  color: Colors.greenAccent,
                  child: Center(
                    child: Text('컨테이너3'),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start, // Row 맨 오른쪽으로정렬
              crossAxisAlignment: CrossAxisAlignment.center, // Row 가운데 정렬
              children: [
                Container(
                  width: 100,
                  height: 80,
                  color: Colors.red,
                  child: Center(
                    child: Text('컨테이너4'),
                  ),
                ),
                Container(
                  width: 100,
                  height: 80,
                  color: Colors.amber,
                  child: Center(
                    child: Text('컨테이너5'),
                  ),
                ),
                Container(
                  width: 100,
                  height: 80,
                  color: Colors.greenAccent,
                  child: Center(
                    child: Text('컨테이너6'),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center, // Row 맨 오른쪽으로정렬
              crossAxisAlignment: CrossAxisAlignment.center, // Row 가운데 정렬
              children: [
                Container(
                  width: 200,
                  height: 100,
                  color: Colors.red,
                  margin: EdgeInsets.symmetric(
                    vertical: 30,
                  ),
                  child: Center(
                    child: Text('컨테이너7'),
                  ),
                ),
                Container(
                  width: 100,
                  height: 80,
                  color: Colors.amber,
                  child: Center(
                    child: Text('컨테이너8'),
                  ),
                ),
                Container(
                  width: 100,
                  height: 80,
                  color: Colors.greenAccent,
                  child: Center(
                    child: Text('컨테이너9'),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center, // Row 맨 오른쪽으로정렬
              crossAxisAlignment: CrossAxisAlignment.center, // Row 가운데 정렬
              children: [
                Container(
                  width: 200,
                  height: 100,
                  color: Colors.red,
                  margin: EdgeInsets.symmetric(
                    vertical: 30,
                  ),
                  child: Center(
                    child: Text('컨테이너7'),
                  ),
                ),
                Container(
                  width: 100,
                  height: 80,
                  color: Colors.amber,
                  child: Center(
                    child: Text('컨테이너8'),
                  ),
                ),
                Container(
                  width: 100,
                  height: 80,
                  color: Colors.greenAccent,
                  child: Center(
                    child: Text('컨테이너9'),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center, // Row 맨 오른쪽으로정렬
              crossAxisAlignment: CrossAxisAlignment.center, // Row 가운데 정렬
              children: [
                Container(
                  width: 200,
                  height: 100,
                  color: Colors.red,
                  margin: EdgeInsets.symmetric(
                    vertical: 30,
                  ),
                  child: Center(
                    child: Text('컨테이너7'),
                  ),
                ),
                Container(
                  width: 100,
                  height: 80,
                  color: Colors.amber,
                  child: Center(
                    child: Text('컨테이너8'),
                  ),
                ),
                Container(
                  width: 100,
                  height: 80,
                  color: Colors.greenAccent,
                  child: Center(
                    child: Text('컨테이너9'),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center, // Row 맨 오른쪽으로정렬
              crossAxisAlignment: CrossAxisAlignment.center, // Row 가운데 정렬
              children: [
                Container(
                  width: 200,
                  height: 100,
                  color: Colors.red,
                  margin: EdgeInsets.symmetric(
                    vertical: 30,
                  ),
                  child: Center(
                    child: Text('컨테이너7'),
                  ),
                ),
                Container(
                  width: 100,
                  height: 80,
                  color: Colors.amber,
                  child: Center(
                    child: Text('컨테이너8'),
                  ),
                ),
                Container(
                  width: 100,
                  height: 80,
                  color: Colors.greenAccent,
                  child: Center(
                    child: Text('컨테이너9'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
