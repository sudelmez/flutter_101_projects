import 'package:flutter/material.dart';

class Iconlearn extends StatelessWidget {
  Iconlearn({Key? key}) : super(key: key);
  final Iconsizes iconsize = Iconsizes(); //direkt bu şekilde de çağırabiliriz.
  final Iconcolors iconcolor = Iconcolors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello'),
      ),
      body: Column(
        children: [
          Icon(
            Icons.message_outlined,
            color: iconcolor.froly,
            size: Iconsizes().iconsmall,
            //size: iconsize.iconsmall, //böyle de olabilir tanımladıktan sonra!
          ),
          Icon(
            Icons.message_outlined,
            color: Theme.of(context).backgroundColor, //rengi temadan alıyor
            size: Iconsizes().iconsmall,
            //size: iconsize.iconsmall, //böyle de olabilir tanımladıktan sonra!
          )
        ],
      ),
    );
  }
}

class Iconsizes {
  final double iconsmall = 40;
}

class Iconcolors {
  final Color froly = const Color(0xffED617A);
}
