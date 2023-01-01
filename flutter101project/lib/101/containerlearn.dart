import 'package:flutter/material.dart';

class ContainerBoxlearn extends StatelessWidget {
  const ContainerBoxlearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 200,
            child: Text('x' * 500),
          ),
          SizedBox.square(
            dimension: 50,
            child: Text('a' * 50),
          ),
          Container(
            constraints: BoxConstraints(
                maxWidth: 200, minWidth: 100, minHeight: 10, maxHeight: 120),
            height: 50,
            padding: EdgeInsets.all(8), //kutunun içinden genişler
            margin: EdgeInsets.all(8), //dışarıdan boşluk
            child: Text('b' * 10),
            decoration: Boxproject.boxdec,
          )
        ],
      ),
      appBar: AppBar(),
    );
  }
}

class Boxdecoration extends BoxDecoration {
  Boxdecoration()
      : super(
            gradient: LinearGradient(colors: [Colors.green, Colors.red]),
            //color: Colors.red,
            //shape: BoxShape.circle,
            border:
                Border.all(width: 10, color: Colors.white), //kenar çizgileri,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.green, offset: Offset(0.1, 1), blurRadius: 12),
            ]); //burayı şimdi kullanmadık, bu da başka bir yol; scaffoldlearn sayfasında kullandık
}

class Boxproject {
  static BoxDecoration boxdec = BoxDecoration(
      gradient: LinearGradient(colors: [Colors.green, Colors.red]),
      //color: Colors.red,
      //shape: BoxShape.circle,
      border: Border.all(width: 10, color: Colors.white), //kenar çizgileri,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(color: Colors.green, offset: Offset(0.1, 1), blurRadius: 12),
      ]);
}
