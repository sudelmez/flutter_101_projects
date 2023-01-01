import 'package:flutter/material.dart';

class Imagelearning extends StatelessWidget {
  const Imagelearning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: Image.network(
                'https://termodizayn.com/thumb.php?p=./img/uploads/muhafazakosullari/icerik/49-elma1.jpg&h=434'),
          ),
          Expanded(child: AssetImage(name: 'Red_Apple')),
        ],
      ),
    );
  }
}

class AssetImage extends StatelessWidget {
  const AssetImage({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(_NamewithPath, fit: BoxFit.cover);
  }

  String get _NamewithPath => 'assets/$name.jpg';
}
