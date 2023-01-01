import 'package:flutter/material.dart';

class Cardlearning extends StatelessWidget {
  const Cardlearning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          _Cardpage(
            child: SizedBox(
              height: 50,
              width: 150,
            ),
          ),
          _Cardpage(
            child: SizedBox(
              height: 50,
              width: 150,
            ),
          ),
          _Cardpage(
            child: SizedBox(
              height: 50,
              width: 150,
            ),
          ),
        ],
      ),
    );
  }
} //main kısmında cardtheme yapabiliriz.bütün cardlara

class Projectmargins {
  static const cartmargin = EdgeInsets.all(10);
}

class _Cardpage extends StatelessWidget {
  const _Cardpage({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.pink,
      shape: StadiumBorder(),
      child: child,
      //ekranda bir tık önde durur
      margin: Projectmargins.cartmargin,
    );
  }
}
