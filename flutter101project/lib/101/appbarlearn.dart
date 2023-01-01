import 'package:flutter/material.dart';

class Appbarlearn extends StatelessWidget {
  const Appbarlearn({Key? key}) : super(key: key);
  final String _title = 'merhaba';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        //centerTitle: true,
        //backgroundColor: Colors.transparent,
        //elevation: 0, //opaklık 0
        actionsIconTheme: IconThemeData(color: Colors.black26),
        leading: Icon(Icons.chevron_left),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit_outlined)),
          Center(
            child: CircularProgressIndicator(),
          ),
        ],
      ),
    );
  }
}
