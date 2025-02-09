import 'package:flutter/material.dart';

const assetImagePath = 'assets/images';
const bannerImage = '$assetImagePath/meicon.png';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Study to Container'),
      ),
      body: const Bodys(),
    ),
  ));
}

class Bodys extends StatelessWidget {
  const Bodys({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(bannerImage),
    );

  }
}

