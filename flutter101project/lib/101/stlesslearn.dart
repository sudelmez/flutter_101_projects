import 'package:flutter/material.dart';
import 'package:flutter101project/101/containerlearn.dart';

class Stlesslearn extends StatelessWidget {
  const Stlesslearn({Key? key}) : super(key: key);
  final String texts = 'sude';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: Paddingtime.Pagepaddingvertical + Paddingtime.paddingright,
        child: Column(
          children: [
            Newshowname(text: texts),
            Newshowname(text: texts),
            Newshowname(text: texts),
            Newshowname(text: texts),
            _Containerforhere()
          ],
        ),
      ),
    );
  }

  Container _Containerforhere() {
    //_ile private koyduk, bu class sadece bu sayfada kullanılabilir
    return Container(
      decoration: BoxDecoration(color: Colors.red),
      height: 50,
      width: 50,
    );
  }
}

//extract method ile de stl class oluşturabiliriz
class Newshowname extends StatelessWidget {
  const Newshowname({Key? key, required this.text})
      : super(key: key); //text required ekledik
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}

class Paddingtime {
  static const Pagepaddingvertical =
      EdgeInsets.symmetric(vertical: 50); //paddingi böyle tanımlayabiliriz

  static const paddingright = EdgeInsets.only(right: 150);
}
