import 'package:flutter/material.dart';

class Pageviewing extends StatefulWidget {
  Pageviewing({Key? key}) : super(key: key);

  @override
  State<Pageviewing> createState() => _PageviewingState();
}

class _PageviewingState extends State<Pageviewing> {
  final _Pagecontroller = PageController(viewportFraction: 0.7);

  int _currentpageindx = 0;

  void _Updatepage(int index) {
    setState(() {
      _currentpageindx = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              _currentpageindx.toString(),
              style: TextStyle(color: Colors.pink),
            ),
          ),
          FloatingActionButton(
              onPressed: () {
                _Pagecontroller.previousPage(
                    duration: _duration(),
                    curve: Curves.slowMiddle); //animasyon
              },
              child: Icon(
                Icons.chevron_left,
              )),
          FloatingActionButton(
            onPressed: () {
              _Pagecontroller.nextPage(
                  duration: _duration(), curve: Curves.slowMiddle); //animasyon
            },
            child: Icon(
              Icons.chevron_right,
            ),
          ),
        ],
      ),
      body: PageView(
        onPageChanged: _Updatepage,
        padEnds: false, //sayfayı soldan başlatır
        controller: _Pagecontroller, //sıradaki sayfanın bir kısmı da gözükür
        children: [
          Container(color: Colors.black),
          Container(
            color: Colors.white,
          ),
          Container(
            color: Colors.yellow,
          )
        ],
      ),
    );
  }

  Duration _duration() => Duration(seconds: 1);
}
