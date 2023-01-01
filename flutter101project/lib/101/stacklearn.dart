import 'package:flutter/material.dart';

class Stackvies extends StatelessWidget {
  const Stackvies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: AssetImage(name: 'Red_Apple'),
                    bottom: 25,
                  ),
                  Positioned(
                      height: 50,
                      right: 0,
                      left: 0,
                      bottom: 0,
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(),
                      ))
                ],
              ))
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
