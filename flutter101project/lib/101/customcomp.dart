import 'package:flutter/material.dart';

class Customcomp extends StatelessWidget with Colorutility {
  Customcomp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Buttonnn(
          redColor: redColor,
          callback: () {},
        ),
      ),
    );
  }
}

class Buttonnn extends StatelessWidget {
  const Buttonnn({Key? key, required this.redColor, required this.callback})
      : super(key: key);
  final VoidCallback
      callback; //butonu kullanabilmek için döndürülen onpressed gibi bir yapı // void function() onpressed olarak da tanımlanır
  final Color redColor;

  @override
  Widget build(BuildContext context) {
    var data = 'blink';

    return ElevatedButton(
      onPressed: () {},
      child: Text(
        data,
        style: Theme.of(context).textTheme.headline5?.copyWith(color: redColor),
      ),
    );
  }
}

class Colorutility {
  final Color redColor = Colors.red;
}
