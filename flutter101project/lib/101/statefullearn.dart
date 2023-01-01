import 'package:flutter/material.dart';

class Stetefllearn extends StatefulWidget {
  const Stetefllearn({Key? key}) : super(key: key);
//dışarıdan data al ver, haberleştiğimiz kısım
  @override
  State<Stetefllearn> createState() => _StetefllearnState();
}

class _StetefllearnState extends State<Stetefllearn> {
  int countval = 0;
/*
  void increaseval() {
    setState(() {
      countval++;
    });
  }

  void decrease() {
    setState(() {
      countval--;
    });
  }
*/

//aynı ekranda farklı countlar yapmak istersek farklı sayfalara yazarız. başka sayfadaki stateful widgeti burada fonk gibi çağırırız
  void updatecoun(bool minusorplus) {
    if (minusorplus) {
      countval++;
    } else {
      countval--;
    }
    setState(() {});
  }

  @override //asıl işlemlerin gerçekleştirildiği yer
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _button1(),
          _button2(),
        ],
      ),
      appBar: AppBar(),
      body: Center(child: Text(countval.toString())),
    );
  }

  Padding _button2() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
        onPressed: () {
          updatecoun(false);
        },
        child: Icon(Icons.remove),
      ),
    );
  }

  Padding _button1() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
        onPressed: () {
          updatecoun(true);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
